FROM python:3.9-slim-buster
RUN apt-get -y update
RUN apt-get -y install git

LABEL "maintainer"="Sam Williams <swilliams.it@outlook.com>"

ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh

RUN apk add gcc musl-dev && \
    pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
