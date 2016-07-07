# crea una imagen de nombre    : dockerizingdjango_web
#

FROM python:2.7
MAINTAINER franz
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD . /code/
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /code/server
RUN chmod ug+x initialize.sh
