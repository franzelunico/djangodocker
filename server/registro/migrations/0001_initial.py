# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(default=b'Your name', max_length=255)),
                ('lang', models.CharField(default=b'en', max_length=8, choices=[(b'en', b'English'), (b'es', b'Espa\xc3\xb1ol')])),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('country', models.CharField(max_length=100)),
            ],
        ),
    ]
