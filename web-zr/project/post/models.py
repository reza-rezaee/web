from django.db import models
# from django_jalali.db import models as jmodels
class Tizhoshan(models.Model):
    STATUS_CHOISES=(

        ("First high school","متوسطه اول"),
        ("second high school","متوسطه دوم")
    )
    # title=models.CharField(max_length=60,verbose_name="عنوان",help_text="عنوان پست را اضافه منید")
    status=models.CharField(max_length=60,choices=STATUS_CHOISES,default="First high school",verbose_name="مشخصات گروه")
    image=models.ImageField(default=None,blank=True,verbose_name="تصویر")
    news=models.TextField(verbose_name="اخبار")
    video=models.FileField(default=None,blank=True,verbose_name="ویدیو خود را وارد کنید")
    
    
    def __str__(self):
        return (f"{self.image}{self.news}{self.video}.{self.status}")
class Konkor_sarasari(models.Model):
    STATUS_CHOISES=(
    ("experimental","تجربی"),
    ("Math","ریاضی"),
    ("Humanities","انسانی"),
    ("art field","هنر")
    )
    # title=models.CharField(max_length=60,verbose_name="عنوان",help_text="عنوان پست را اضافه منید")
    status=models.CharField(max_length=60,choices=STATUS_CHOISES,default="تجربی",verbose_name="مشخصات گروه")
    image=models.ImageField(default=None,blank=True,verbose_name="تصویر")
    news=models.TextField(verbose_name="اخبار")
    video=models.FileField(default=None,blank=True,verbose_name="ویدیو خود را وارد کنید")
    def __str__(self):
        return (f"{self.image}{self.news}{self.video}.{self.status}")
class Konkor_arshad(models.Model):
    STATUS_CHOISES=(
        ("Ministry of Science 1","زیر گروه یک وزارت بهداشت"),
        ("Ministry of Science 2","زیر گروه دو وزارت بهداشت"),
        ("Ministry of Science 3","زیر گروه سه وزارت بهداشت"),
        ("Ministry of Science 3","(رشته های شناور) وزارت بهداشت"),
        ("Ministry of Health 1","وزارت علوم")
        )

    # title=models.CharField(max_length=60,verbose_name="عنوان",help_text="عنوان پست را اضافه منید")
    status=models.CharField(max_length=60,choices=STATUS_CHOISES,default="تجربی",verbose_name="مشخصات گروه")
    image=models.ImageField(default=None,blank=True,verbose_name="تصویر")
    news=models.TextField(verbose_name="اخبار")
    video=models.FileField(default=None,blank=True,verbose_name="ویدیو خود را وارد کنید")
    def __str__(self):
        return (f"{self.image}{self.news}{self.video}.{self.status}")
class Konkor_doctora(models.Model):
    # STATUS_CHOISES=(
    #     ("doctora","دکتری")
    # )
    # status=models.CharField(max_length=60,choices=STATUS_CHOISES,default="دکتری",verbose_name="مشخصات گروه")
    image=models.ImageField(default=None,blank=True,verbose_name="تصویر")
    news=models.TextField(verbose_name="اخبار")
    video=models.FileField(default=None,blank=True,verbose_name="ویدیو خود را وارد کنید")
    def __str__(self):
        return (f"{self.image}{self.news}{self.video}")

class Jozve(models.Model):
   STATUS_CHOISES=(
        ("Ministry of Science 1","زیر گروه یک وزارت بهداشت"),
        ("Ministry of Science 2","زیر گروه دو وزارت بهداشت"),
        ("Ministry of Science 3","زیر گروه سه وزارت بهداشت"),
        ("Ministry of Science 3","(رشته های شناور) وزارت بهداشت"),
        ("Ministry of Health 1","وزارت علوم"),
        ("doctora","دکتری"),
        ("experimental","تجربی"),
        ("Math","ریاضی"),
        ("Humanities","انسانی"),
        ("art field","هنر"),
        ("First high school","متوسطه اول"),
        ("second high school","متوسطه دوم"),
) 
   status=models.CharField(max_length=60,choices=STATUS_CHOISES,default="تجربی",verbose_name="مشخصات گروه")
   slug=models.SlugField(max_length=100,verbose_name="لینک")
   def __str__(self):
        return(f"{self.slug}{self.status}")
class Class(models.Model):
    STATUS_CHOISES=(
        ("Ministry of Science 1","زیر گروه یک وزارت بهداشت"),
        ("Ministry of Science 2","زیر گروه دو وزارت بهداشت"),
        ("Ministry of Science 3","زیر گروه سه وزارت بهداشت"),
        ("Ministry of Science 3","(رشته های شناور) وزارت بهداشت"),
        ("Ministry of Health 1","وزارت علوم"),
        ("doctora","دکتری"),
        ("experimental","تجربی"),
        ("Math","ریاضی"),
        ("Humanities","انسانی"),
        ("art field","هنر"),
        ("First high school","متوسطه اول"),
        ("second high school","متوسطه دوم"),
    )
    # title=models.CharField(max_length=60,verbose_name="عنوان",help_text="عنوان پست را اضافه منید")
    status=models.CharField(max_length=60,choices=STATUS_CHOISES,default="تجربی",verbose_name="مشخصات گروه")
    slug=models.SlugField(max_length=100,verbose_name="لینک")
    def __str__(self):
        return(f"{self.slug}{self.status}")
class Azmon(models.Model):
    STATUS_CHOISES=(
        ("Ministry of Science 1","زیر گروه یک وزارت بهداشت"),
        ("Ministry of Science 2","زیر گروه دو وزارت بهداشت"),
        ("Ministry of Science 3","زیر گروه سه وزارت بهداشت"),
        ("Ministry of Science 3","(رشته های شناور) وزارت بهداشت"),
        ("Ministry of Health 1","وزارت علوم"),
        ("doctora","دکتری"),
        ("experimental","تجربی"),
        ("Math","ریاضی"),
        ("Humanities","انسانی"),
        ("art field","هنر"),
        ("First high school","متوسطه اول"),
        ("second high school","متوسطه دوم"),
    )
    # title=models.CharField(max_length=60,verbose_name="عنوان",help_text="عنوان پست را اضافه منید")
    status=models.CharField(max_length=60,choices=STATUS_CHOISES,default="تجربی",verbose_name="مشخصات گروه")
    slug=models.SlugField(max_length=100,verbose_name="لینک")
    def __str__(self):
        return(f"{self.slug}{self.status}")
class Moshavere(models.Model):
    STATUS_CHOISES=(
        ("Ministry of Science 1","زیر گروه یک وزارت بهداشت"),
        ("Ministry of Science 2","زیر گروه دو وزارت بهداشت"),
        ("Ministry of Science 3","زیر گروه سه وزارت بهداشت"),
        ("Ministry of Science 3","(رشته های شناور) وزارت بهداشت"),
        ("Ministry of Health 1","وزارت علوم"),
        ("doctora","دکتری"),
        ("experimental","تجربی"),
        ("Math","ریاضی"),
        ("Humanities","انسانی"),
        ("art field","هنر"),
        ("First high school","متوسطه اول"),
        ("second high school","متوسطه دوم"),
    )
    status=models.CharField(max_length=60,choices=STATUS_CHOISES,default="تجربی",verbose_name="مشخصات گروه")
    slug=models.SlugField(max_length=100,verbose_name="لینک")
    def __str__(self):
        return(f"{self.slug}{self.status}")
class Nafarat(models.Model):
    STATUS_CHOISES=(
        ("Ministry of Science 1","زیر گروه یک وزارت بهداشت"),
        ("Ministry of Science 2","زیر گروه دو وزارت بهداشت"),
        ("Ministry of Science 3","زیر گروه سه وزارت بهداشت"),
        ("Ministry of Science 3","(رشته های شناور) وزارت بهداشت"),
        ("Ministry of Health 1","وزارت علوم"),
        ("doctora","دکتری"),
        ("experimental","تجربی"),
        ("Math","ریاضی"),
        ("Humanities","انسانی"),
        ("art field","هنر"),
        ("First high school","متوسطه اول"),
        ("second high school","متوسطه دوم"),
    )
    status=models.CharField(max_length=60,choices=STATUS_CHOISES,default="تجربی",verbose_name="مشخصات گروه")
    summery=models.CharField(max_length=150,verbose_name="نام نفرات برتر")
class Emtehan_nahaii(models.Model):
    STATUS_CHOISES=(
    ("experimental","تجربی"),
    ("Math","ریاضی"),
    ("Humanities","انسانی"),
    ("art field","هنر")
    )
    status=models.CharField(max_length=60,choices=STATUS_CHOISES,default="تجربی",verbose_name="مشخصات گروه")
    slug=models.SlugField(max_length=100,verbose_name="لینک")

    def __str__(self):
        return(f"{self.slug}{self.status}")
    
class MyModels(models.Model):
    my_file=models.FileField(upload_to='uploads/')