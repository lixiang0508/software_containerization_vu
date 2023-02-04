{{/*
Expand the name of the chart.
*/}}
{{- define "vegan.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "vegan.fullname" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "vegan.labels" -}}
app: {{ .Chart.Name }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "vegan.selectorLabels" -}}
app: {{ .Chart.Name }}
{{- end }}
