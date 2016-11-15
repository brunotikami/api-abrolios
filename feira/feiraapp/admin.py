from django.contrib import admin
from .models import Feira


@admin.register(Feira)
class FeiraAdmin(admin.ModelAdmin):
    list_display = ('id', 'distrito', 'regiao5', 'nome_feira', 'bairro')