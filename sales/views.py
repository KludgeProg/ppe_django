from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
@login_required
def welcome(request):
	ctx = {
		'current_site': "Welcome",
	}
	return render(request, 'sales/home.html', ctx)
