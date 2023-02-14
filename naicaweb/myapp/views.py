from django.http import Http404, HttpResponse, HttpResponseRedirect
from django.shortcuts import get_object_or_404, render
from django.core.mail import send_mail, get_connection

from django.urls import translate_url

from django.template import loader

from .models import Ally
from .models import Testimonial

from .forms import ContactForm

# Create your views here.
def index(request):
	# get last 10 allies
	latest_ally_list = Ally.objects.order_by('-pub_date')[:10]
	context = {'latest_ally_list' : latest_ally_list}
	return render(request, 'myapp/index.html', context)

def about(request):
	# get all allies
	ally_list = Ally.objects.all().order_by('-pub_date')
	# get all testimonials
	testimonial_list = Testimonial.objects.all()
	context = {'ally_list' : ally_list, 'testimonial_list' : testimonial_list}
	return render(request, 'myapp/about.html', context)
	
def contact(request):
	submitted = False
	if request.method == 'POST':
		form = ContactForm(request.POST)
		if form.is_valid():
			cd = form.cleaned_data
			# assert False
			con = get_connection('django.core.mail.backends.console.EmailBackend')
			send_mail(
				cd['yourname'],
				cd['message'],
				cd['phonenumber'],
				cd.get('email', 'noreply@example.com'),
				['contactperson@example.com'],
				connection=con
			)
			return HttpResponseRedirect('/contact?submitted=True')
	else:
		form = ContactForm()
		if 'submitted' in request.GET:
			submitted = True
		
	return render(request, 'myapp/contact.html', {'form' : form, 'submitted' : submitted})
	
def cookies(request):
	return render(request, 'myapp/cookies.html')
	
def privacy(request):
	return render(request, 'myapp/privacy.html')