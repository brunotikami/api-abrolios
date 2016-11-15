from django.conf.urls import url
from django.contrib import admin
from django.views.generic.base import RedirectView
from rest_framework.urlpatterns import format_suffix_patterns
from feiraapp import views


urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^feira/$', views.FeiraList.as_view(), name='feira_list'),
    url(r'^feira/(?P<pk>[0-9]+)/$', views.FeiraDetails.as_view()),
    url(r'^$', RedirectView.as_view(url='/feira/'), name='redirect_to_feira'),
]

urlpatterns = format_suffix_patterns(urlpatterns)