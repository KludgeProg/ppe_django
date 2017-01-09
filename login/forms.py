from django import forms


class LoginForm(forms.Form):
	user_attrs = {
		'placeholder': 'Usuario',
		'class': 'form-control input-lg',
		'required': True,
	}
	password_attrs = {
		'placeholder': 'Contraseña',
		'class': 'form-control input-lg',
		'required': True,
	}
	username = forms.CharField(widget=forms.TextInput(attrs=user_attrs), max_length=75)
	password = forms.CharField(widget=forms.PasswordInput(attrs=password_attrs), max_length=75)
