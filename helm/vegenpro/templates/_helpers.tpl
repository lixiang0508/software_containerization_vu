{{/*
Expand the name of the chart.
*/}}
{{- define "veganpro.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "veganpro.fullname" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "veganpro.labels" -}}
app: {{ .Chart.Name }}
{{- if .Values.canary.enable }}
track: canary
{{- else }}
track: stable
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "veganpro.selectorLabels" -}}
app: {{ .Chart.Name }}
{{- if .Values.canary.enable }}
track: canary
{{- else }}
track: stable
{{- end }}
{{- end }}

{{/*
false labels
*/}}
{{- define "veganpro.labels.false" -}}
app: {{ .Chart.Name }}
track: stable
{{- end }}

{{/*
false selectlabels
*/}}
{{- define "veganpro.selectlabels.false" -}}
app: {{ .Chart.Name }}
track: stable
{{- end }}
