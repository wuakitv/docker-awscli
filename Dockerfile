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
      git \
      make \
      && \
    pip install -r /tmp/requirements.txt --no-cache-dir
RUN git clone https://github.com/awslabs/git-secrets /tmp/git-secrets \
      && cd /tmp/git-secrets && make install

WORKDIR /aws

CMD /bin/sh
