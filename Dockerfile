FROM python:alpine
LABEL authors="Leonardo Damasceno"

ARG CLI_VERSION=1.16.75

RUN apk -uv add --no-cache bash groff jq less && \
    pip install --no-cache-dir awscli==$CLI_VERSION

WORKDIR /aws

CMD sh
