from django.http import HttpResponse

def view(request):
    return HttpResponse('this is ui')
