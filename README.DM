# Alegrosz


## Algorytm tworzenia funkcjonalności django

1. Czy potrzebne nowe django apps?
    - `django-admin startapp <name>`
    - rejestruje w settings.py -> INSTALLED_APPS
2. Czy potrzebne dane?
   - tworzę model w <appname>/models.py
   - `python manage.py makemigrations <app_label>`
   - `python manage.py migrate <app_label>`
3. Czy potrzebuje obsługę w CMS (Django Admin)?
   - rejestruje modele w <app_name>/admin.py
4. Czy potrzebuje pobierać dane od użytkownika?
   - tworze forms.py
   - tworze klasę formularza
5. Czy potrzebna jest logika? (View)
    - <app_name>/views.py
6. Czy potrzebny jest routing?