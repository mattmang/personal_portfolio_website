from django.urls import path, include
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('projects/', views.project_gallery, name='project_gallery'),
    path('blog/', views.blog_list, name='blog_list'),
    path('post/<int:id>/', views.blog_post_detail, name='blog_post_detail'),
    path('contact/', views.contact, name='contact'),
]