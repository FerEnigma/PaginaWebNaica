from django import forms
from django.utils.translation import gettext_lazy as _
from phonenumber_field.formfields import PhoneNumberField

class ContactForm(forms.Form):
	yourname = forms.CharField(max_length=100, label=_('Name'))
	email = forms.EmailField(required=False,label=_('e-mail'))
	phonenumber = PhoneNumberField(label=_('Phone'),required=False)
	message = forms.CharField(widget=forms.Textarea(attrs={"rows": 1}))