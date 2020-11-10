from django.urls import path
from .views import UsernameValidationView, EmailValidationView, RegisterationView, LoginView, LogoutView
from . import views
from django.views.decorators.csrf import csrf_exempt

urlpatterns = [
    path('register/', RegisterationView.as_view(), name='register'),
    path('login/', LoginView.as_view(), name='login'),
    path('validate-username/', csrf_exempt(UsernameValidationView.as_view()), name='validate-username'),
    path('validate-email/', csrf_exempt(EmailValidationView.as_view()), name='validate-email'),
    path('logout/', LogoutView.as_view(), name='logout'),
]