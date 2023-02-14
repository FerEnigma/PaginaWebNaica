from django.urls import path
from django.utils.translation import gettext_lazy as _

from . import views

urlpatterns = [
	# index
    path('', views.index, name='index'),
    # about
    path(_('about/'), views.about, name='about'),
    # contact
    path(_('contact/'), views.contact, name='contact'),
    # cookies
    path(_('cookies/'), views.cookies, name='cookies'),
    # privacy
    path(_('privacy/'), views.privacy, name='privacy'),
]