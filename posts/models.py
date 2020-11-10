from django.db import models
from django.contrib.auth.models import User 
from django.utils.timezone import now 

# Create your models here.
class Posts(models.Model):
	title = models.CharField(max_length=255)
	image = models.ImageField(upload_to = 'img')
	description = models.TextField()
	date = models.DateField(default=now)
	user = models.ForeignKey(to=User, on_delete=models.CASCADE)
	tage = models.CharField(max_length=255)
	likes = models.IntegerField(blank=True, null=True)
	username = models.CharField(max_length=255)

	def __str__(self):
		return self.title

class Profile(models.Model):
	name = models.CharField(max_length=255, blank=True, null=True)
	father_name = models.CharField(max_length=255, blank=True, null=True)
	phone = models.CharField(max_length=255, blank=True, null=True)
	gender = models.CharField(max_length=255, blank=True, null=True)
	address = models.TextField(max_length=255, blank=True, null=True)
	education = models.TextField(blank=True, null=True)
	username = models.CharField(max_length=255)
	image = models.ImageField(upload_to='img')

	def __str__(self):
		return self.name

class Followers(models.Model):
	username = models.CharField(max_length=255)
	follower = models.CharField(max_length=255)
	status = models.IntegerField()

	def __str__(self):
		return self.username

class Commints(models.Model):
	name = models.CharField(max_length=255)
	commint = models.TextField()
	post = models.ForeignKey(to=Posts, on_delete=models.CASCADE)
	date = models.DateField(default=now)

	def __str__(self):
		return self.name
		
		
class Like(models.Model):
	post = models.ForeignKey(to=Posts, on_delete=models.CASCADE)
	likes = models.IntegerField(default=0)
	
	def __str__(self):
		return self.post
