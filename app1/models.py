# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models


class Blog(models.Model):
    name = models.CharField(max_length=128)

    def __str__(self):
        """
        This method is used to show the visual representation of your model.
        """
        return self.name
