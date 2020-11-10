from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.views import View 
from django.contrib import messages
import json
from django.http import JsonResponse
# Create your views here.

def search_friends(request):
    if request.method == 'POST':
        search_str = json.loads(request.body).get('searchText')
        from .models import Profile
        friends = Profile.objects.filter(
                name__icontains=search_str
            ) | Profile.objects.filter(
                father_name__icontains=search_str
            ) | Profile.objects.filter(
                username__icontains=search_str
            ) | Profile.objects.filter(
            	phone__istartswith=search_str
            )
        data = friends.values()
        return JsonResponse(list(data), safe=False)

@login_required(login_url='/accounts/login')
def index(request):
	user = User.objects.get(username=request.user)
	from .models import Posts
	
	
	from .models import Followers
	from .models import Profile
	userStatus = Followers.objects.filter(username=request.user.username)
	users = []
	posts = []
	cmnts = []
	profiles = []
	posts.append(Posts.objects.filter(user_id=request.user.id))
	profiles.append(Profile.objects.get(username=request.user.username))
	for userst in userStatus:
		user = Profile.objects.get(username=userst.follower)
		users.append(user)
		u_id = User.objects.get(username=user.username)
		post = Posts.objects.filter(user_id=u_id.id)
		posts.append(post)
		profiles.append(user)
		print(profiles)
	for post in posts:
		for p in post:
			from .models import Commints
			cmnts.append(Commints.objects.filter(post_id=p.id))
	context = {
		'user': user,
		'posts': posts,
		'users': users,
		'cmnts': cmnts,
		'profiles': profiles
	}
	return render(request, 'base.html', context)

def viewAllPosts(request):
	from .models import Posts
	posts = Posts.objects.filter(user_id=request.user.id)
	context = {
		'posts': posts
	}
	return render(request, 'posts/view-all-posts.html', context)

class Posts(View):
	
	def get(self, request):
		return render(request, 'posts/index.html')

	def post(self, request):
		title = request.POST['title']
		image = request.FILES['image']
		description = request.POST['description']
		date = request.POST['date']
		tag = request.POST['tag']

		if title == '':
			messages.error(request, 'Title Field is required!')
			return render(request, 'posts/index.html')
		elif tag == '':
			messages.error(request, 'Tag Field is required!')
			return render(request, 'posts/index.html')

		else:
			from .models import Posts
			Posts.objects.create(
				title=title,
				image=image,
				description=description,
				date=date,
				tage=tag,
				user_id=request.user.id,
				username=request.user.username
				)
			messages.success(request, 'Post has been added Successfully!')
			return redirect('index')

class Profile(View):
	"""docstring for Profile"""
	def get(self, request):
		from .models import Profile
		profile = Profile.objects.get(username=request.user.username)
		context = {
			'profile': profile
		}
		return render(request, 'posts/profile.html', context)

	def post(self, request):
		name = request.POST['name']
		father_name = request.POST['father_name']
		phone = request.POST['phone']
		gender = request.POST['gender']
		address = request.POST['address']
		image = request.FILES['image']
		education = request.POST['education']

		if gender == '':
			messages.error(request, 'Select Gender')
			return render(request, 'posts/upload-profile.html')
		else:
			from .models import Profile
			profile = Profile.objects.get(username=request.user.username)
			profile.name = name
			profile.father_name = father_name
			profile.phone = phone
			profile.gender = gender
			profile.address = address
			profile.image = image
			profile.education = education
			profile.save()

			messages.success(request, 'Your Profile has been Updated Successfully!')
			return redirect('profile')

		return render(request, 'posts/profile.html')

def updateProfile(request):
	return render(request, 'posts/upload-profile.html')

def editProfile(request):
	from .models import Profile
	profile = Profile.objects.get(username=request.user.username)
	context = {
		'profile': profile
	}
	if request.method == 'GET':
		return render(request, 'posts/edit-profile.html', context)

	if request.method == 'POST':
		name = request.POST['name']
		father_name = request.POST['father_name']
		phone = request.POST['phone']
		gender = request.POST['gender']
		address = request.POST['address']
		image = request.FILES['image']
		education = request.POST['education']

		if gender == '':
			messages.error(request, 'Select Gender')
			return render(request, 'posts/upload-profile.html')
		else:
			from .models import Profile
			profile = Profile.objects.get(username=request.user.username)
			profile.name = name
			profile.father_name = father_name
			profile.phone = phone
			profile.gender = gender
			profile.address = address
			profile.image = image
			profile.education = education
			profile.save()

			messages.success(request, 'Your Profile has been Updated Successfully!')
			return redirect('profile')

def editPost(request, id):
	if request.method == 'GET':
		from .models import Posts
		post = Posts.objects.get(id=id)
		context = {
			'post': post
		}
		return render(request, 'posts/edit-posts.html', context)

	if request.method == 'POST':
		from .models import Posts
		post = Posts.objects.get(id=id)

		title = request.POST['title']
		image = request.FILES['image']
		description = request.POST['description']
		tag = request.POST['tag']

		context = {
			'post': post
		}
		post.title = title
		post.image = image
		post.description = description
		post.tage = tag

		post.save()
		messages.success(request, 'One record has been updated!')
		return redirect('view-all-posts')

def deletePost(request, id):
	from .models import Posts
	post = Posts.objects.get(pk=id)
	post.delete()
	return redirect('view-all-posts')


def followFriend(request, id):
	req_user = request.user.username

	from .models import Profile
	usr = Profile.objects.get(id=id)
	follow_user = usr.username

	from .models import Followers

	Followers.objects.create(
		username=req_user,
		follower=follow_user,
		status=1
		)
	
	return redirect('index')

def comment(request):
	if request.method == 'POST':
		comment = request.POST['comment']
		post_id = request.POST['post_id']
		print(post_id)
		from .models import Commints
		from .models import Profile
		name = Profile.objects.get(username=request.user.username)
		Commints.objects.create(
				name=name.name,
				commint=comment,
				post_id=post_id
			)
		return redirect('index')
	return redirect('index')
		

def like(request, id):
	from .models import Like
	lks = Like.objects.all()
	for like in lks:

		if like.post_id == id:
			likes = like.likes
			likes = 1 + int(likes)
			like.likes = likes
			like.save()
			return redirect('index')
		elif like.post_id != id:
			Like.objects.create(
				likes=1,
				post_id=id
				)
			return redirect('index')
		
def share(request, id=None):
	from .models import Posts
	post = Posts.objects.get(pk=id)
	context = {
		'post': post
	}
	if request.method == 'GET':
		return render(request, 'posts/share_post.html', context)

	if request.method == 'POST':
		title = post.title
		image = post.image
		description = post.description
		tage = post.tage
		user_id = request.user.id
		username = request.user.username
		Posts.objects.create(
			title=request.POST['title'],
			image=image,
			description=request.POST['description'],
			tage=request.POST['tag'],
			user_id=user_id,
			username=username
			)
		messages.success(request, 'Your have been share this post')
		return redirect('index')

