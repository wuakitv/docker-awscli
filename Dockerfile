FROM python:3.7-alpine

ARG CLI_VERSION=1.16.140

RUN apk -uv add --no-cache \
      bash \
      coreutils \
      curl \
      docker \
      groff \
      jq \
      less \
      && \
    pip install --no-cache-dir awscli==$CLI_VERSION

WORKDIR /aws

CMD /bin/sh
