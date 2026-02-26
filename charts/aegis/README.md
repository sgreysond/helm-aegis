# Aegis Chart

This chart deploys:
- Aegis control-plane Deployment
- Aegis agent DaemonSet
- Optional TLS certificates/secrets

## Minimal example

```bash
helm upgrade --install aegis ./charts/aegis \
  --namespace aegis-system \
  --create-namespace \
  --set agent.controlPlaneUrl=https://axis.velikey.com \
  --set agent.secret.bootstrapToken=REDACTED
```

## Security note

Prefer `agent.secret.existingSecretName` in production and manage secrets externally.
