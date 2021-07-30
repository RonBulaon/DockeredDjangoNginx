from django.contrib import admin
from django.urls import path

import app1.views

urlpatterns = [
    path('', app1.views.index, name="index"),
    path('admin/', admin.site.urls),
    path('home/', app1.views.home, name="home"),
    path('login/', app1.views.loginPage, name="login"),
    path('logout/', app1.views.logoutUser, name="logout"),
    path('adminpanel/', app1.views.adminpanel, name="adminpanel"),
]
