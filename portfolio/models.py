from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField

# Homepage Model

class Homepage(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()

    def __str__(self):
        return self.title


# Projects Model

class Project(models.Model):
    title = models.CharField(max_length=100)
    description = RichTextUploadingField()       # Replacing TextField with RichTextField
    image = models.ImageField(upload_to='projects/')            # Image upload (mandatory)
    link = models.URLField()
    technologies = models.CharField(max_length=200, blank=True)

    def __str__(self):
        return self.title


# BlogPost Model

class BlogPost(models.Model):
    title = models.CharField(max_length=200)
    content = RichTextUploadingField()       # Replacing TextField with RichTextField
    date_posted = models.DateTimeField(auto_now_add=True)
    category = models.CharField(max_length=50, blank=True)
    image = models.ImageField(upload_to='blog_images/', blank=True, null=True)      # Image upload (optional)

    def __str__(self):
        return self.title


# Blog Comment Board Model

class Comment(models.Model):
    post = models.ForeignKey(BlogPost, related_name='comments', on_delete=models.CASCADE)
    name = models.CharField(max_length=200)
    email = models.EmailField()
    comment = models.TextField()
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Comment by {self.name} on {self.post.title}"


# Contact Model

class Contact(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    message = models.TextField()
    date_sent = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Message from {self.name} - {self.email}"