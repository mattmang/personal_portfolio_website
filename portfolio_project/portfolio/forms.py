from django import forms
from .models import Contact
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
            'name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Your Name', 'style': 'width: 100%; height: 40px;'}),
            'email': forms.EmailInput(attrs={'class': 'form-control', 'placeholder': 'Your Email', 'style': 'width: 100%; height: 40px;'}),
            'message': forms.Textarea(attrs={'class': 'form-control', 'placeholder': 'Your Message', 'style': 'width: 100%; height: 100px;'}),
        }