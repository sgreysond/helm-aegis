{{- define "aegis.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "aegis.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "aegis.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
{{- default (printf "%s-agent" (include "aegis.fullname" .)) .Values.serviceAccount.name -}}
{{- else -}}
{{- default (printf "%s-agent" (include "aegis.fullname" .)) .Values.serviceAccount.name -}}
{{- end -}}
{{- end -}}

{{- define "aegis.controlPlaneTlsSecretName" -}}
{{- default (printf "%s-cp-tls" (include "aegis.fullname" .)) .Values.controlPlane.tls.secretName -}}
{{- end -}}

{{- define "aegis.agentTlsSecretName" -}}
{{- default (printf "%s-agent-tls" (include "aegis.fullname" .)) .Values.agent.tls.secretName -}}
{{- end -}}
