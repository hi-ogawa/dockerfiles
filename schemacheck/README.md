# schemacheck

```sh
# build and publish
docker build -t hiogawa/schemacheck - < Dockerfile
docker push hiogawa/schemacheck
```

## example

```sh
# validate github workflow
docker run --rm -v "$PWD:/mnt:ro" hiogawa/schemastore -c 'js-yaml /mnt/.github/workflows/ci.yml > data.json && ajv validate -s /schemas/github-workflow.json -d data.json'
```

## references

- https://github.com/SchemaStore/schemastore
- https://github.com/ajv-validator/ajv-cli
- https://github.com/nodeca/js-yaml
