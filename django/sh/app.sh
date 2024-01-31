#!/bin/sh

u=`echo $1 | sed 's/^\(.\)/\U\1/'`
config=`printf \'%s.apps.%sConfig\', $1 $u`
path="path('$1/', include('$1.urls')),"

python3 manage.py startapp $1 \
&& sed -i "33a $config" config/settings.py \
&& sed -i "21a $path" config/urls.py

cat <<EOF > $1/views.py
from django.http import HttpResponse

def view(request):
    return HttpResponse('this is $1')
EOF

cat <<EOF > $1/urls.py
from django.urls import path
from . import views

urlpatterns = [
    path('', views.view, name='view'),
]
EOF