# Generated by Django 3.2.8 on 2022-05-19 15:28

from django.db import migrations, models

import ai_django_core.mixins.models


class Migration(migrations.Migration):
    dependencies = [
        ('testapp', '0006_modelwithselector'),
    ]

    operations = [
        migrations.CreateModel(
            name='ModelWithSaveWithoutSignalsMixin',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('value', models.PositiveIntegerField(default=0)),
            ],
            bases=(ai_django_core.mixins.models.SaveWithoutSignalsMixin, models.Model),
        ),
    ]