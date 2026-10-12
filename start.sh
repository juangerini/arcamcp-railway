#!/bin/sh
set -e
mkdir -p /app/certs/prod /app/certs/dev
echo "$AFIP_PROD_CERT_B64" | base64 -d > /app/certs/prod/prod_certificado.crt
echo "$AFIP_PROD_KEY_B64"  | base64 -d > /app/certs/prod/prod_private.key
echo "$AFIP_DEV_CERT_B64"  | base64 -d > /app/certs/dev/dev_certificado.crt
echo "$AFIP_DEV_KEY_B64"   | base64 -d > /app/certs/dev/dev_private.key
exec supergateway \
  --stdio "npx -y @yoryoboy/arcamcp@latest" \
  --outputTransport streamableHttp \
  --port ${PORT:-8000}
