from django.conf.urls import patterns, url
from polls import views

urlpatterns = patterns('',
                       # ex: /polls/
                       url(r'^$', views.index, name='index'),
                       # the 'name' value as called by the {% url %} template tag | ex: /polls/5/
                       url(r'^(?P<question_id>\d+)/$', views.detail, name='detail'),
                       # ex: /polls/5/results/
                       url(r'^(?P<question_id>\d+)/results/$', views.results, name='results'),
                       # ex: /polls/5/vote/
                       url(r'^(?P<question_id>\d+)/vote/$', views.vote, name='vote'),
                       )

