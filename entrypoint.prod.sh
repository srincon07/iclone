#!/bin/sh

if [ "$DATABASE" = "postgres"]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
        sleep 0.1
    done

    echo "PostgresSQL started"
fi

python manage.py makemigrations --noinput
python manage.py migrate --noinput
python manage.py collectstatic --no-input --clear
python manage.py createsuperuser

exec "$@"