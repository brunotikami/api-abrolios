from django.shortcuts import render
from .models import Feira
from .serializers import FeiraSerializer

from django.http import Http404

from rest_framework.views import APIView
from rest_framework.response import Response


class FeiraList(APIView):
    """
    Returns all Feira in the database
    """
    def get(self, request):
        feira = Feira.objects.all()
        serializer = FeiraSerializer(feira, many=True)
        return Response(serializer.data)

class FeiraDetails(APIView):
    """
    Return single feira
    """
    def get_object(self, pk):
        try:
            return Feira.objects.get(pk=pk)
        except Feira.DoesNotExist:
            raise Http404

    def get(self, request, pk):      
        feira = self.get_object(pk)
        serializer = FeiraSerializer(feira)
        return Response(serializer.data)        

