FROM python:3-alpine

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Shiro" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.name="Oracle Cloud Infrastructure CLI" \
    org.label-schema.version=$CLI_VERSION \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.vcs-ref=$VCS_REF 

WORKDIR /oci-cli

RUN apk --no-cache add gcc && \
    musl-dev \
    libffi-dev \
    openssl-dev

RUN pip install oci-cli && \
    yes | oci setup autocomplete

ENTRYPOINT ["/usr/local/bin/oci"]
