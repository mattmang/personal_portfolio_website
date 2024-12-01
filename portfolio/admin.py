from django.contrib import admin
from .models import Project, BlogPost, Contact, Comment

admin.site.register(Project)
class ProjectAdmin(admin.ModelAdmin):
    list_display = ('title', 'link', 'technologies')
    search_fields = ('title', 'technologies')

admin.site.register(BlogPost)
class BlogPostAdmin(admin.ModelAdmin):
    list_display = ('title, date_posted', 'category', 'image')
    search_fields = ('title', 'content')

admin.site.register(Contact)

admin.site.register(Comment)
class CommentAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'timestamp', 'post')       # Fields to display in the admin list view
    list_filter = ('timestamp', 'post')                         # Filters for easier navigation
    search_fields = ('name', 'email', 'comment')                # Enable search functionality
    ordering = ('-timestamp',)                                  # Order comments by most recent
    readonly_fields = ('timestamp',)                            # Make timestamp read-only