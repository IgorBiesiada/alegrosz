from django .http import Http404
from django.shortcuts import render
from django.urls import reverse_lazy
from django.views.generic import ListView, DetailView, CreateView

from . import models

#def product_list(request):
#    products = models.Product.objects.all()
#    return render(request, 'product/product.html', {"products": products})


class ProductListView(ListView):
    model = models.Product
    template_name = "product/products.html"
    context_object_name = "product"


def product_detail(request, product_id):
    product = models.Product.objects.get(pk=product_id)
    return render(request, 'product/product.html', {'product': product})

class ProductDetailView(DetailView):
    model = models.Product
    template_name = 'product/product.html'
    context_object_name = 'product'

class ProductCreateView(CreateView):
    model = models.Product
    fields = ('name', 'description', 'price', 'stock_count', 'sku', 'slug')
    template_name = 'product/product_form.html'
    success_url = reverse_lazy('product:product_list')