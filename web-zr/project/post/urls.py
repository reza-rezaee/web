from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

app_name='post'
urlpatterns = [
    path('',views.home,name='home'),
    path('sar.html',views.sar,name='sar'),
    path('navbar.html',views.navbar,name='navbar'),
    path('tizho.html',views.tizho,name='tizho'),
    path('sarasari.html',views.sarasari,name='sarasari'),
    path('arshad.html',views.arshad,name='arshad'),
    path('zir2.html',views.zir2,name='zir2'),
    path('zir3.html',views.zir3,name='zir3'),
    path('azmon1.html',views.azmon1,name='azmon1'),
    path('azmon2.html',views.azmon2,name='azmon2'),
    path('azmon3.html',views.azmon3,name='azmon3'),
    path('azmon4.html',views.azmon4,name='azmon4'),
    path('index.html',views.index,name='index'),
    path('alm.html',views.alm,name='alm'),
    path('khabar.html',views.khabar,name='khabar'),
    path('hoshan.html',views.hoshan,name='hoshan'),
    path('hoshan1.html',views.hoshan1,name='hoshan1'),
    path('hoshan2.html',views.hoshan2,name='hoshan2'),
    path("<int:post_id>",views.detail,name="detail"),

] + static(settings.MEDIA_URL,document=settings.MEDIA_ROOT)
