from django.http import HttpResponse
from .gpt import generate

def view(request):
    res = generate(request)
    return HttpResponse(res)