from rest_framework import serializers
from .models import BlogPost

class BlogPostSerializer(serializers.ModelSerializer):
    class Meta:
        model = BlogPost
        fields = '__all__'  # Or specify fields: ['id', 'title', 'content', 'date_posted', 'category', 'link']
