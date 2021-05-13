FROM python:3.8-alpine
RUN apk update

LABEL "com.github.actions.name"="GitHub Action for pre-commit"
LABEL "com.github.actions.description"="Run pre-commit hooks"
LABEL "maintainer"="Sam Williams <swilliams.it@outlook.com>"

ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh

RUN apk add gcc musl-dev git

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN python --version ; pip --version


ENTRYPOINT ["/entrypoint.sh"]
