from django.db import models
from django.utils.translation import gettext_lazy as _


# Ally industries choices 
class Ally(models.Model):
    ally_name = models.CharField(max_length=200)
    ally_image = models.ImageField(upload_to='uploads/allies')
    ally_url = models.URLField(
    	max_length=250,
    	db_index=True,
    	unique=True,
    	blank=True
    )
    
    class Industry(models.TextChoices):
	    REAL_ESTATE = '1', _('Real State')
	    SOFTWARE = '2', _('Software')
	    CONSTRUCTION = '3', _('Construction')
	    TRADING_GOODS = '4', _('Trading Goods')
	    
    ally_industry = models.CharField(
		max_length = 2,
		choices = Industry.choices,
		default = Industry.REAL_ESTATE,
	)
     
    pub_date = models.DateTimeField('date published')
    
    class Meta(object):
    	verbose_name_plural = 'allies'

    def __str__(self):
	    return self.ally_name
   	

class Testimonial(models.Model):
    testimonial_text = models.CharField(_('Testimonial text'), max_length=200)
    testimonial_author = models.CharField(_('Testimonial author'), max_length=200)
    
    def __str__(self):
	    return self.testimonial_author