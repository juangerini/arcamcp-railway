# arca-mcp Railway Deploy

Servidor MCP para facturación AFIP (Argentina) corriendo en Railway.

Usa `supergateway` para envolver `@yoryoboy/arcamcp` y exponerlo como HTTP streamable.

## Variables de entorno requeridas

- `AFIP_CUIT` - CUIT del contribuyente
- `AFIP_PASSWORD` - Contraseña
- `AFIP_CERT_ALIAS` - Alias del certificado
- `AFIP_PRODUCTION` - `true` para producción
- `AFIP_SDK_ACCESS_TOKEN` - Token de acceso SDK
- `AFIP_PROD_CERT_B64` - Certificado de producción en base64
- `AFIP_PROD_KEY_B64` - Clave privada de producción en base64
- `AFIP_DEV_CERT_B64` - Certificado de desarrollo en base64
- `AFIP_DEV_KEY_B64` - Clave privada de desarrollo en base64
- `AFIP_PROD_CERT_PATH` - `/app/certs/prod/prod_certificado.crt`
- `AFIP_PROD_KEY_PATH` - `/app/certs/prod/prod_private.key`
- `AFIP_DEV_CERT_PATH` - `/app/certs/dev/dev_certificado.crt`
- `AFIP_DEV_KEY_PATH` - `/app/certs/dev/dev_private.key`

## Uso en Claude Desktop

```json
{
  "mcpServers": {
    "arca-mcp": {
      "type": "streamable-http",
      "url": "https://TU-APP.railway.app/mcp"
    }
  }
}
```
