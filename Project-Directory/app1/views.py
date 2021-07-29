from django.shortcuts import render

from .models import SiteWide

def index(request):
    sitewide = SiteWide.objects.all().first()
    return render(request, 'app1/home.html', { 'sitewide':sitewide })
