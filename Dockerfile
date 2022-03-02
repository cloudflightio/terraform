FROM docker.io/hashicorp/terraform:latest

RUN apk add --no-cache python3 py3-pip gcc musl-dev python3-dev libffi-dev openssl-dev cargo make \
 && pip install wheel \
 && pip install cryptography azure-cli azure-identity azure-keyvault-secrets \
 && pip cache purge \
 && apk del gcc musl-dev python3-dev libffi-dev openssl-dev cargo make \
 && ln -s /usr/bin/python3 /usr/bin/python
