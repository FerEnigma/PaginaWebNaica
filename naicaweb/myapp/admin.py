from django.contrib import admin

from .models import Ally
from .models import Testimonial

# Register your models here.
class AllyAdmin(admin.ModelAdmin):
	readonly_fields= ('id',)


admin.site.register(Ally, AllyAdmin)
admin.site.register(Testimonial)
