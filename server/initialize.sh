#!/bin/bash
python /code/server/manage.py makemigrations
echo "python /code/server/manage.py makemigrations"

echo  "python /code/server/manage.py migrate --noinput"
python manage.py migrate

echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'asdf1234')" | python manage.py shell
