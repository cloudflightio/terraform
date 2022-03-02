FROM docker.io/hashicorp/terraform:1.1.3

RUN apk add --no-cache python3 py3-pip gcc musl-dev python3-dev libffi-dev openssl-dev cargo make \
 && pip install wheel \
 && pip install cryptography azure-identity azure-keyvault-secrets \
 && pip cache purge \
 && apk del gcc musl-dev python3-dev libffi-dev openssl-dev cargo make \
 && ln -s /usr/bin/python3 /usr/bin/python \
 && rm -rf /root/.cargo /root/.cache 
