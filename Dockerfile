FROM python:3.8-alpine
RUN apk update
RUN apk add git

LABEL "maintainer"="Sam Williams <swilliams.it@outlook.com>"

ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh

RUN apk add gcc musl-dev && \
    pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
