# Generated by Django 3.2 on 2022-11-30 07:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0007_alter_ally_ally_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ally',
            name='ally_image',
            field=models.ImageField(upload_to='uploads/allies'),
        ),
    ]