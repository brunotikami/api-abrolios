from rest_framework import serializers
from .models import Feira


class FeiraSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Feira
        fields = ('longitude', 'latitude', 'setcens', 'areap', 'coddist', 'distrito', 'codsubpref', 'subpref', 'regiao5', 'regiao8', 'nome_feira', 'registro', 'logradouro', 'numero', 'bairro', 'referencia')