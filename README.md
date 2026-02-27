# helm-aegis

Public Helm chart distribution for VeliKey Aegis.

## Install

```bash
helm pull oci://ghcr.io/sgreysond/charts/aegis --version 0.1.1
helm upgrade --install aegis oci://ghcr.io/sgreysond/charts/aegis --version 0.1.1 \
  --namespace aegis-system --create-namespace
```

## Required production inputs

- `agent.controlPlaneUrl` (Axis/control-plane URL)
- `agent.secret.bootstrapToken` or `agent.secret.existingSecretName`
- TLS values under `controlPlane.tls` / `agent.tls` where required

## Local validation

```bash
helm lint charts/aegis
helm template aegis charts/aegis --namespace aegis-system > /tmp/aegis-render.yaml
```

## Release

Tag format: `chart-aegis-vX.Y.Z`

Publishing workflow packages and pushes to:

- `oci://ghcr.io/sgreysond/charts/aegis`

## License

Apache-2.0
