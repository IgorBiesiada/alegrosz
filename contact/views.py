from django.http import HttpResponse
from django.shortcuts import render

def contact(request):
    return HttpResponse("<h1>contact</h1>")
