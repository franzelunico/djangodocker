# encoding:utf-8
from django.db import models


class Usuario(models.Model):
    """Registrara usuarios"""
    LANGS = (('en', 'English'), ('es', 'Español'))
    name = models.CharField(max_length=255, default="Your name")
    lang = models.CharField(max_length=8, choices=LANGS, default='en')
    created_at = models.DateTimeField(auto_now_add=True)
    country = models.CharField(max_length=100)

    def __unicode__(self):
        return self.name
