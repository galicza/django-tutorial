from django.shortcuts import render
from django.http import HttpResponse
from polls.models import Question
from django.template.loader import get_template
from django.template import Context
import datetime

# Create your views here.

def current_datetime(request):
    now = datetime.datetime.now()
    t = get_template('current_datetime.html')
    html = t.render(Context({'current_date': now}))
    return HttpResponse(html)