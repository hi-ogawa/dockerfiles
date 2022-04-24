FROM node:16.14.2-bullseye

RUN npm install -g ajv-cli@5.0.0 js-yaml@4.1.0 && \
    git clone https://github.com/SchemaStore/schemastore.git /schemastore && \
    cp -r /schemastore/src/schemas/json /schemas

WORKDIR /app

COPY ./schemacheck.sh /schemacheck.sh

ENTRYPOINT ["bash", "/schemacheck.sh"]
