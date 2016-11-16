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

    def post(self, request, format=None):
        feira = FeiraSerializer(data=request.DATA)
        if feira.is_valid():
            feira.save()
            return Response(feira.data, status=status.HTTP_201_CREATED)
        return Response(feira.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pk, format=None):
        feira = self.get_object(pk)
        feira.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

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

    def put(self, request, pk, format=None):
        feira = self.get_object(pk)
        serializer = FeiraSerializer(feira, data=request.DATA)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pk, format=None):
        feira = self.get_object(pk)
        feira.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
