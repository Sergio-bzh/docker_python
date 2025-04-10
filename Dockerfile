FROM python:3.8

RUN pip3 install Django==4.1.5

RUN pip3 install pandas && pip3 install requests && pip3 install django-environ

# RUN mkdir -p /home/mon_projet/app

WORKDIR /app