# Generated by Django 3.1.1 on 2020-10-01 12:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0003_auto_20200929_1135'),
    ]

    operations = [
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('father_name', models.CharField(max_length=255)),
                ('phone', models.CharField(max_length=255)),
                ('gender', models.CharField(max_length=255)),
                ('address', models.TextField(max_length=255)),
                ('education', models.TextField()),
            ],
        ),
    ]
