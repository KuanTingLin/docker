FROM python:3.6.0

MAINTAINER woodlin

WORKDIR /project

ADD ./mysite /

RUN apt-get update -y

RUN apt-get install vim -y

RUN  pip install django==1.11

RUN  pip install pymongo

RUN  pip install sklearn

RUN  pip install numpy

RUN  pip install scipy

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000