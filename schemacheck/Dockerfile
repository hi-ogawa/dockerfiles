FROM node:16.14.2-alpine3.14

# hadolint ignore=DL3018
RUN apk add --no-cache git bash && \
    npm install -g ajv-cli@5.0.0 js-yaml@4.1.0 && \
    git clone https://github.com/SchemaStore/schemastore.git /schemastore && \
    cp -r /schemastore/src/schemas/json /schemas

WORKDIR /app

COPY ./schemacheck.sh /schemacheck.sh

ENTRYPOINT ["bash", "/schemacheck.sh"]
