FROM python:3.11.8 as python-django-celery
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
# CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]