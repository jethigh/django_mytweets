# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

# Create your views here.

from django.views.generic import View
import os

class Index(View):
    def get(self, request):
        params = {}
        params['name'] = 'Django'
        params['uname'] = os.uname
        return render(request, 'base.html', params)
