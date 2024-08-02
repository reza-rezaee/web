from django.shortcuts import render,get_object_or_404
from django.views.decorators.http import require_http_methods,require_GET,require_safe
from django.http import HttpResponse,Http404
from django.template import loader
from .models import Tizhoshan,Konkor_sarasari,Konkor_arshad,Jozve,Class,Azmon,Moshavere,Nafarat,Emtehan_nahaii,Konkor_doctora


@require_http_methods(["GET"])

def home(request):
    last_post=Tizhoshan.objects.order_by("-news")
    context={"last_post":last_post}
    return render(request,"home.html",context)
# Create your views here.
@require_GET
def detail(request,post_id):
    p=get_object_or_404(Tizhoshan,pk=post_id)
    context={"post":p,
        
    }
    return render(request,"home.html",context)
def sar(request):
    return render(request,"sar.html")
def tizho(request):
    return render(request,"tizho.html")
def navbar(request):
    return render(request,"navbar.html")
def sarasari(request):
    return render(request,"sarasari.html")
def arshad(request):
    return render(request,"arshad.html")
def zir2(request):
    return render(request,"zir2.html")
def zir3(request):
    return render(request,"zir3.html")
def azmon1(request):
    return render(request,"azmon1.html")
def azmon2(request):
    return render(request,"azmon2.html")
def azmon3(request):
    return render(request,"azmon3.html")
def azmon4(request):
    return render(request,"azmon4.html")
def index(request):
    return render(request,"index.html")
def alm(request):
    return render(request,"alm.html")
def khabar(request):
    return render(request,"khabar.html")
def hoshan(request):
    return render(request,"hoshan.html")
def hoshan1(request):
    return render(request,"hoshan1.html")
def hoshan2(request):
    return render(request,"hoshan2.html")
