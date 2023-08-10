FROM python:3.9
WORKDIR app
COPY . /app
RUN pip install -r requirements.txt 
EXPOSE 8001 8005 8006
CMD ["python","manage.py","runserver","0.0.0.0:8001","0.0.0.0:8005","0.0.0.0:8006"]
