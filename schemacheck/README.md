# schemacheck

```sh
# lint
hadolint Dockerfile
shellcheck schemacheck.sh

# build and publish
docker build -t hiogawa/schemacheck .
docker push hiogawa/schemacheck
```

## example

```sh
# validate github workflow
docker run --rm -i hiogawa/schemacheck -y -s github-workflow < .github/workflows/ci.yml

# or using commands manually
docker run --rm -v "$PWD:/app:ro" --entrypoint bash hiogawa/schemacheck -c 'js-yaml .github/workflows/ci.yml > /data.json && ajv validate --strict=false -s /schemas/github-workflow.json -d /data.json'
```

## references

- https://github.com/SchemaStore/schemastore
- https://github.com/ajv-validator/ajv-cli
- https://github.com/nodeca/js-yaml
