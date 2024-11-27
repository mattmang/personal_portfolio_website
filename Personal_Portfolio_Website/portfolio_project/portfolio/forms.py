from django import forms
from .models import Contact, Comment
from captcha.fields import CaptchaField, CaptchaTextInput

class CustomCaptchaTextInput(CaptchaTextInput):
    def __init__(self, attrs=None):
        custom_attrs = {'style': 'padding: 10px; border: 2px solid #007bff; background-color: white; width: 30%; height: 50px; float: right;'}
        if attrs:
            custom_attrs.update(attrs)
        super().__init__(custom_attrs)

class ContactForm(forms.ModelForm):
    captcha = CaptchaField(widget=CustomCaptchaTextInput())
    
    class Meta:
        model = Contact
        fields = ['name', 'email', 'message','captcha']
        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Your Name', 'style': 'width: 100%; height: 35px;'}),
            'email': forms.EmailInput(attrs={'class': 'form-control', 'placeholder': 'Your Email', 'style': 'width: 100%; height: 35px;'}),
            'message': forms.Textarea(attrs={'class': 'form-control', 'placeholder': 'Your Message', 'style': 'width: 100%; height: 70px;'}),
        }

class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ['name', 'email', 'comment']  # Only include the fields users need to fill out
        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Your Name'}),
            'email': forms.EmailInput(attrs={'class': 'form-control', 'placeholder': 'Your Email'}),
            'comment': forms.Textarea(attrs={'class': 'form-control', 'placeholder': 'Write your comment here...', 'rows': 4}),
        }
        labels = {
            'name': 'Name',
            'email': 'Email',
            'comment': 'Comment',
        }