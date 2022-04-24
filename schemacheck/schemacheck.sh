#!/bin/bash
set -eu -o pipefail

Help() {
  echo "usage: schemacheck.sh --schema <schema-name> [--help] [--list] [--yaml]"
  exit "${1:-0}"
}

arg_yaml=""
arg_schema=""

while [ $# -gt 0 ]; do
  case "$1" in
    -y|--yaml)
      arg_yaml=1
      shift
      ;;
    -s|--schema)
      arg_schema="$2"
      shift 2
      ;;
    -h|--help)
      Help 0
      ;;
    -l|--list)
      ls /schemas
      exit 0
      ;;
    *)
      Help 1
      break
      ;;
  esac
done

schema_file="/schemas/$arg_schema.json"

if ! [ -f "$schema_file" ]; then
  Help 1
fi

cat - > /data.json

if [ -n "$arg_yaml" ]; then
  mv /data.json /data.yml
  js-yaml /data.yml > /data.json
fi

exec ajv validate --strict=false -s "$schema_file" -d /data.json
