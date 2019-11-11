FROM python:3.7-buster

WORKDIR /data

COPY requirements.txt .
RUN pip install -r requirements.txt

ENV FLASK_APP=app.py

# /usr/local/bin/flask