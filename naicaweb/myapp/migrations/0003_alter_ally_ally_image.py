# Generated by Django 3.2 on 2022-11-30 03:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0002_auto_20221129_1742'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ally',
            name='ally_image',
            field=models.ImageField(upload_to='myapp/uploads/allies'),
        ),
    ]