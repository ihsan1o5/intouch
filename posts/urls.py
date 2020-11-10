from django.urls import path
from . import views
from .views import Posts, Profile
from django.views.decorators.csrf import csrf_exempt

urlpatterns = [
    path('', views.index, name='index'),
    path('posts/', Posts.as_view(), name="posts"),
    path('profile/', Profile.as_view(), name='profile'),
    path('upload-profile/', views.updateProfile, name='upload-profile'),
    path('edit-profile/', views.editProfile, name="edit-profile"),
    path('view-all-posts/', views.viewAllPosts, name="view-all-posts"),
    path('edit-posts/<int:id>', views.editPost, name="edit-posts"),
    path(r'^follow_friend/<int:id>', csrf_exempt(views.followFriend), name="follow_friend"),
    path('delete-post/<int:id>', views.deletePost, name="delete-post"),
    path('comment/', views.comment, name="comment"),
    path('like/<int:id>', views.like, name="like"),
    path('share/<int:id>', views.share, name='share'),
    path('search-friend/', csrf_exempt(views.search_friends), name="search-friend")
]