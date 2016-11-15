from django.urls import reverse
from rest_framework import status
from rest_framework.test import APITestCase
from feiraapp.models import Feira


class FeiraGetTests(APITestCase):

    def setUp(self):
        self.url = reverse('feira_list')
        feira = Feira(longitude='2222',
                      latitude='2222',
                      setcens='2',
                      areap='2',
                      coddist='2',
                      distrito='2',
                      codsubpref='2',
                      subpref='2',
                      regiao5='2',
                      regiao8='2',
                      nome_feira='2',
                      registro='2',
                      logradouro='2',
                      numero='2',
                      bairro='vila fiori',
                      referencia='ferf1')
        feira.save()

    def test_feira_api_status_code(self):        
        response = self.client.get(self.url, format='json')
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_feira_api_content(self):
        response = self.client.get(self.url, format='json')
        expected_data = [{'longitude' : '2222',
                      'latitude': '2222',
                      'setcens': '2',
                      'areap': '2',
                      'coddist': '2',
                      'distrito': '2',
                      'codsubpref': '2',
                      'subpref': '2',
                      'regiao5': '2',
                      'regiao8': '2',
                      'nome_feira': '2',
                      'registro': '2',
                      'logradouro': '2',
                      'numero': '2',
                      'bairro': 'vila fiori',
                      'referencia': 'ferf1'}]
        self.assertEqual(expected_data, response.json())
