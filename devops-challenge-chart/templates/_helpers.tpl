{{- define "devops-challenge-app.name" -}}
{{ .Chart.Name }}
{{- end }}
{{- define "devops-challenge-app.fullname" -}}
{{ .Chart.Name }}-release
{{- end }}
