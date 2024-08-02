from django.contrib import admin
from .models import Tizhoshan,Konkor_sarasari,Konkor_arshad,Jozve,Class,Azmon,Moshavere,Nafarat,Emtehan_nahaii,Konkor_doctora

admin.site.register(Tizhoshan)
admin.site.register(Konkor_sarasari)
admin.site.register(Konkor_arshad)
admin.site.register(Konkor_doctora)
admin.site.register(Jozve)
admin.site.register(Class)
admin.site.register(Azmon)
admin.site.register(Moshavere)
admin.site.register(Nafarat)
admin.site.register(Emtehan_nahaii)






# Register your models here.
def make_draft(modeladmin,request,queryset):
    result=queryset.update(status="draft")
    if result==1:
        message_bit="1 post was"
    else:
        message_bit=f"{result} posts were "
    modeladmin.message_user(request,f"{message_bit} succefully marks as draft") 
def make_poblish(modeladmin,request,queryset):
    result=queryset.update(status="poblish")
    if result == 1 :
    
        message_bit="1 post  was"
    else:
        message_bit=f"{result} posts were "
    modeladmin.message_user(request,f"{message_bit} succefully marks as poblish") 

make_poblish.short_discription="mark selected post as poblish "
make_draft.short_discription="mark selected post as draft"
# @admin.register(Tizhoshan)
# class postadmin(admin.ModelAdmin):
#     list_display=("title","slug","poblish","status")
#     list_filter=("poblish","status")
#     search_fields=("title","body")
#     ordering=["status","poblish"]
#     prepopulated_fields={"slug":("title",)}
#     actions=[make_poblish,make_draft]