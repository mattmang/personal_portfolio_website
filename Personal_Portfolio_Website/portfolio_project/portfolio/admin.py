from django.contrib import admin
from .models import Project, BlogPost, Contact

admin.site.register(Project)
class ProjectAdmin(admin.ModelAdmin):
    list_display = ('title', 'link', 'technologies')
    search_fields = ('title', 'technologies')

admin.site.register(BlogPost)
class BlogPostAdmin(admin.ModelAdmin):
    list_display = ('title, date_posted', 'category')
    search_fields = ('title', 'content')

admin.site.register(Contact)