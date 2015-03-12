from django.conf.urls import patterns, url
from times import views

urlpatterns = patterns('',
                       # ex: /times/
                       url(r'^$', views.current_datetime, name='current_datetime'),
                       )

