from django.shortcuts import render

# Create your views here.


def homepage(request):
	context = {'title': 'Inicio'}
	return render(request, 'homepage/homepage_body.html', context)
