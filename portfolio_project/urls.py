"""
URL configuration for portfolio_project project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from rest_framework.routers import DefaultRouter
from portfolio.views import BlogPostViewSet

# Create a router and register the BlogPostViewSet
router = DefaultRouter()
router.register(r'blogposts', BlogPostViewSet)


urlpatterns = [
    path('admin/', admin.site.urls),            # Admin site
    path('', include('portfolio.urls')),        # App-level URL configuration
    path('captcha/', include('captcha.urls')),  # Contact Form Captcha
    path('ckeditor/', include('ckeditor_uploader.urls')),
    path('api/', include(router.urls)),         # This will automatically generate the following API endpoints:
]
                                            # GET /api/blogposts/ - List all blog posts
                                            # POST /api/blogposts/ - Create a new blog post
                                            # GET /api/blogposts/{id}/ - Retrieve a specific blog post
                                            # PUT /api/blogposts/{id}/ - Update a specific blog post
                                            # DELETE /api/blogposts/{id}/ - Delete a specific blog post

# Serve media files in development mode
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
