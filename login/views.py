from django.shortcuts import redirect, render
from django.contrib.auth import authenticate, login, logout

from .forms import LoginForm
# Create your views here.


def user_login(request):
	error = None
	current_site = 'Login'

	if request.method == 'POST':
		form = LoginForm(request.POST)
		if form.is_valid():
			cd = form.cleaned_data
			user = authenticate(username=cd['username'],
			                    password=cd['password'],)
			if user is not None:
				if user.is_active:
					login(request, user)
					return redirect('/control/welcome')
				else:
					error = 'Cuenta Desactivada'
			else:
				error = 'Usuario no existe'
	else:
		form = LoginForm()

	ctx = {
		'current_site': current_site,
		'form': form,
		'error': error,
	}
	return render(request, 'login/login.html', ctx)


def user_logout(request, next_page='tesla', template_name='tesla', redirect_field_name='index'):
	logout(request)
	return redirect('index')
