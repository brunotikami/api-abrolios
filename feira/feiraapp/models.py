from django.db import models


class Feira(models.Model):
    """
    Defines a feira model
    """
    id = models.CharField(
        primary_key=True, verbose_name='identificador', max_length=8)
    longitude = models.CharField(verbose_name='longitude', max_length=10)
    latitude = models.CharField(verbose_name='latitude', max_length=10)
    setcens = models.CharField(verbose_name='setor censitário', max_length=15)
    areap = models.CharField(verbose_name='área de ponderação', max_length=13)
    coddist = models.CharField(
        verbose_name='código do distrito conforme ibge', max_length=9)
    distrito = models.CharField(
        verbose_name='distrito municipal', max_length=18)
    codsubpref = models.CharField(
        verbose_name='código da subprefeitura', max_length=2)
    subpref = models.CharField(verbose_name='subprefeitura', max_length=25)
    regiao5 = models.CharField(
        verbose_name='região conforme divisão do município em 5 áreas', max_length=6)
    regiao8 = models.CharField(
        verbose_name='região conforme divisão do município em 8 áreas', max_length=7)
    nome_feira = models.CharField(
        verbose_name='nome da feira livre', max_length=30)
    registro = models.CharField(
        verbose_name='registro da feira livre', max_length=6)
    logradouro = models.CharField(verbose_name='logradouro', max_length=34)
    numero = models.CharField(verbose_name='número', max_length=5)
    bairro = models.CharField(verbose_name='bairro', max_length=20)
    referencia = models.CharField(
        verbose_name='ponto de referência', max_length=24)
