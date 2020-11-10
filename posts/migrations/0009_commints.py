# Generated by Django 3.1.1 on 2020-10-08 16:58

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0008_followers'),
    ]

    operations = [
        migrations.CreateModel(
            name='Commints',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('commint', models.TextField()),
                ('date', models.DateField(default=django.utils.timezone.now)),
            ],
        ),
    ]