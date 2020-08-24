FROM python:3.7-alpine

COPY requirements.txt /tmp
RUN apk -uv add --no-cache \
      bash \
      coreutils \
      curl \
      docker \
      groff \
      jq \
      less \
      && \
    pip install -r /tmp/requirements.txt --no-cache-dir
WORKDIR /aws

CMD /bin/sh
