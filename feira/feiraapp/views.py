from django.shortcuts import render
from .models import Feira
from .serializers import FeiraSerializer


from django.http import Http404

from rest_framework import generics
from rest_framework.response import Response


class FeiraList(generics.ListCreateAPIView):
    """
    Returns all Feira in the database
    """
    queryset = Feira.objects.all()
    serializer_class = FeiraSerializer    

class FeiraDetails(generics.RetrieveAPIView):
    """
    Return one specific Feira in the database
    """
    queryset = Feira.objects.all()
    serializer_class = FeiraSerializer
    lookup_fields = ('bairro', 'coddist')