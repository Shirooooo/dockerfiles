FROM python:3-slim-buster

LABEL maintainer="qwinwin"

WORKDIR /oci-cli

RUN pip install oci-cli && \
    yes | oci setup autocomplete

ENTRYPOINT ["/usr/local/bin/oci"]
