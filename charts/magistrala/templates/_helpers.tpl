# Copyright (c) Abstract Machines
# SPDX-License-Identifier: Apache-2.0

{{/*
Expand the name of the chart.
*/}}
{{- define "magistrala.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "magistrala.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "magistrala.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "magistrala.labels" -}}
helm.sh/chart: {{ include "magistrala.chart" . }}
{{ include "magistrala.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "magistrala.selectorLabels" -}}
app.kubernetes.io/name: {{ include "magistrala.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "magistrala.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "magistrala.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}


{{- define "readerconfig" -}}
{{- if and .Values.timescalereader.enable (not .Values.postgresreader.enable)  -}}
    {{- printf "{ \"host\": \"%s-timescalereader\", \"port\": \"%d\", \"ingress\": true }" .Release.Name .Values.timescalereader.httpPort | fromJson | toJson -}}
{{- else if and .Values.timescalereader.enable (not .Values.postgresreader.enable) -}}
     {{- printf "{ \"host\": \"postgres\", \"port\": \"%d\", \"ingress\": true }" .Values.postgresreader.httpPort | fromJson | toJson -}}
{{- else if and .Values.timescalereader.enable (not .Values.postgresreader.enable) -}}
    {{ fail "Invalid configuration: Both Postgres and Timescale cannot be enabled together in a conflicting manner" }}
{{- else -}}
    {{- printf "{ \"ingress\": false }"  | fromJson | toJson -}}
{{- end }}
{{- end }}


{{- define "writerconfig" -}}
{{- if and .Values.timescalewriter.enable (not .Values.postgreswriter.enable)  -}}
    {{- printf "{ \"host\": \"%s-timescalewriter\", \"port\": \"%d\", \"ingress\": true }" .Release.Name .Values.timescalewriter.httpPort | fromJson | toJson -}}
{{- else if and .Values.timescalewriter.enable (not .Values.postgreswriter.enable) -}}
     {{- printf "{ \"host\": \"postgres\", \"port\": \"%d\", \"ingress\": true }" .Values.postgreswriter.httpPort | fromJson | toJson -}}
{{- else if and .Values.timescalewriter.enable (not .Values.postgreswriter.enable) -}}
    {{ fail "Invalid configuration: Both Postgres and Timescale cannot be enabled together in a conflicting manner" }}
{{- else -}}
    {{- printf "{ \"ingress\": false }"  | fromJson | toJson -}}
{{- end }}
{{- end }}
