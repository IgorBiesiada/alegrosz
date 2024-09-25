# Alegrosz


## Algorytm tworzenia funkcjonalności django

1. czy potrzebne nowe djnago apps?
    -'django-admin startapp <name>'
    -'rejestruje w settings.py -> INSTALLED_APPS'
2. Czy potrzebne dane
    -tworzę modele w <appname>/models.py
    -'python manage.py makemigration <app_label>'
    -'python manage.py migrate <app_label>'
3. Czy potrzebuję obsługę w CMS(Django Admin)
    -'rejestruję modele w <app_name>/admin.py'
4. Czy potrzebna jest logika? (View)
    -'<app_name/views.py>'

3. Czy potrzebny jest routing?