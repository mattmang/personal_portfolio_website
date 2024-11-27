from django import forms
from django.shortcuts import render, redirect, get_object_or_404
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.db.models import Q
from django.core.mail import send_mail
from django.contrib import messages
from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticatedOrReadOnly, AllowAny
from .models import Homepage, Project, BlogPost, Contact, Comment
from .forms import ContactForm, CommentForm
from .serializers import BlogPostSerializer


# Project Homepage View

def home(request):
    return render(request, 'portfolio/home.html')


# Project Gallery View

def project_gallery(request):
    projects = Project.objects.all()
    paginator = Paginator(projects, 6)  # Display 6 projects per page
    page_number = request.GET.get('page')
    try:
        page_obj = paginator.page(page_number)
    except PageNotAnInteger:
        page_obj = paginator.page(1)  # Default to the first page
    except EmptyPage:
        raise get_object_or_404("Page does not exist")  # Handle out-of-range pages

    context = {
        'projects': page_obj,
    }
    return render(request, 'portfolio/project_gallery.html', context)


# Blog Posts View

def blog_list(request):
    search_query = request.GET.get('q', '').strip()  # Strip unnecessary spaces
    posts = BlogPost.objects.all().order_by('-date_posted')  # Order by latest first

    if search_query:
        posts = posts.filter(Q(title__icontains=search_query) | Q(content__icontains=search_query))

    paginator = Paginator(posts, 6)  # Show 6 posts per page
    page_number = request.GET.get('page', 1)
    try:
        page_obj = paginator.page(page_number)
    except PageNotAnInteger:
        page_obj = paginator.page(1)
    except EmptyPage:
        page_obj = paginator.page(paginator.num_pages)

    context = {
        'page_obj': page_obj,
        'search_query': search_query,
    }
    return render(request, 'portfolio/blog_list.html', context)


# Blog Post Detail View

def blog_post_detail(request, id):
    # Retrieve the blog post by its ID or return a 404 if not found
    post = get_object_or_404(BlogPost, id=id)
    
    # Render the detail view for the blog post
    return render(request, 'portfolio/blog_post_detail.html', {'post': post})


# Comment Form
class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ['name', 'email', 'comment']

def blog_post_detail(request, id):
    post = get_object_or_404(BlogPost, id=id)
    comments = post.comments.all()
    form = CommentForm()

    if request.method == 'POST':
        form = CommentForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.post = post
            comment.save()
            return redirect('blog_post_detail', id=post.id)

    return render(request, 'portfolio/blog_post_detail.html', {
        'post': post,
        'comments': comments,
        'form': form,
    })


# Blog Post External API View

class BlogPostViewSet(viewsets.ModelViewSet):       # API endpoint that allows blog posts to be viewed or edited.
    queryset = BlogPost.objects.all().order_by('-date_posted')
    serializer_class = BlogPostSerializer
    permission_classes = [IsAuthenticatedOrReadOnly]  # Allow read-only for unauthenticated users


# Contact Form View

def contact(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()     # Save the submission to the database
            
            # Extract form data
            name = form.cleaned_data['name']
            email = form.cleaned_data['email']
            message = form.cleaned_data['message']

            try:
                # Send an email notification
                send_mail(
                    subject=f"New Contact Form Submission from: {name}",
                    message=f"""
                    You have received a new message from:
                    
                    Name: {name}
                    Email: {email}
                    
                    Message sent:
                    
                    {message}
                    """,
                    from_email=email,
                    recipient_list=[''],  # Replace with your email
                    fail_silently=True,         # You can set to True for production to avoid breaking the app
                )
                # Display success message
                messages.success(request, f"Thank you for your message, {form.cleaned_data['name']}! I will get back to you soon.")
            except Exception:
                # Handle email sending failure
                messages.error(request, 'Failed to send your message. Please try again later.')

            return redirect('contact')  # Redirect to avoid resubmission issues
    else:
        form = ContactForm()

    return render(request, 'portfolio/contact.html', {'form': form})