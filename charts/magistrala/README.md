# magistrala

Magistrala IoT Platform

![Version: 0.15.1](https://img.shields.io/badge/Version-0.15.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.15.1](https://img.shields.io/badge/AppVersion-0.15.1-informational?style=flat-square)

**Homepage:** <https://abstractmachines.fr/magistrala.html>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| drasko | <drasko.draskovic@abstractmachines.fr> |  |
| dusan | <dusan.borovcanin@abstractmachines.fr> |  |

## Source Code

* <https://hub.docker.com/u/magistrala>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| @bitnami | postgresqlbootstrap(postgresql) | 15.2.10 |
| @bitnami | postgresqlreader(postgresql) | 15.2.10 |
| @bitnami | postgresqlwriter(postgresql) | 15.2.10 |
| @bitnami | timescaledb(postgresql) | 15.2.10 |
| @bitnami | postgresqlre(postgresql) | 15.2.10 |
| https://absmach.github.io/supermq-devops/ | supermq(Supermq) | 0.16.5 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| bootstrap.enabled | bool | `true` |  |
| bootstrap.encKey | string | `"v7aT0HGxJxt2gULzr3RHwf4WIf6DusPp"` |  |
| bootstrap.eventConsumer | string | `"bootstrap"` |  |
| bootstrap.httpPort | int | `9013` |  |
| bootstrap.httpServerCert | string | `""` |  |
| bootstrap.httpServerKey | string | `""` |  |
| bootstrap.image | object | `{}` |  |
| bootstrap.instanceId | string | `""` |  |
| bootstrap.jaegerTraceRatio | float | `1` |  |
| bootstrap.replicaCount | int | `1` |  |
| bootstrap.resources.limits.cpu | string | `"200m"` |  |
| bootstrap.resources.limits.memory | string | `"256Mi"` |  |
| bootstrap.resources.requests.cpu | string | `"100m"` |  |
| bootstrap.resources.requests.memory | string | `"128Mi"` |  |
| defaults.image.pullPolicy | string | `"IfNotPresent"` |  |
| defaults.image.rootRepository | string | `"magistrala"` |  |
| defaults.image.tag | string | `"latest"` |  |
| defaults.logLevel | string | `"error"` |  |
| defaults.replicaCount | int | `1` |  |
| defaults.sendTelemetry | string | `"true"` |  |
| postgresdb.database | string | `"messages"` |  |
| postgresdb.enabled | bool | `true` |  |
| postgresdb.global.postgresql.auth.database | string | `"messages"` |  |
| postgresdb.global.postgresql.auth.password | string | `"magistrala"` |  |
| postgresdb.global.postgresql.auth.postgresPassword | string | `"magistrala"` |  |
| postgresdb.global.postgresql.auth.username | string | `"magistrala"` |  |
| postgresdb.global.postgresql.service.ports.postgresql | int | `5432` |  |
| postgresdb.host | string | `"postgresrw"` |  |
| postgresdb.image.registry | string | `"docker.io"` |  |
| postgresdb.image.repository | string | `"postgres/postgresdb"` |  |
| postgresdb.image.tag | string | `"latest-pg12"` |  |
| postgresdb.name | string | `"postgresrw"` |  |
| postgresdb.password | string | `"magistrala"` |  |
| postgresdb.persistence.enabled | bool | `true` |  |
| postgresdb.persistence.size | string | `"2Gi"` |  |
| postgresdb.port | int | `5432` |  |
| postgresdb.primary.resources.limits.cpu | string | `"150m"` |  |
| postgresdb.primary.resources.limits.memory | string | `"192Mi"` |  |
| postgresdb.primary.resources.requests.cpu | string | `"100m"` |  |
| postgresdb.primary.resources.requests.memory | string | `"128Mi"` |  |
| postgresdb.reader.enabled | bool | `true` |  |
| postgresdb.reader.httpPort | int | `9011` |  |
| postgresdb.reader.image | object | `{}` |  |
| postgresdb.username | string | `"magistrala"` |  |
| postgresdb.writer.enabled | bool | `true` |  |
| postgresdb.writer.httpPort | int | `9012` |  |
| postgresdb.writer.image | object | `{}` |  |
| postgresqlbootstrap.database | string | `"bootstrap"` |  |
| postgresqlbootstrap.enabled | bool | `true` |  |
| postgresqlbootstrap.global.postgresql.auth.database | string | `"bootstrap"` |  |
| postgresqlbootstrap.global.postgresql.auth.password | string | `"magistrala"` |  |
| postgresqlbootstrap.global.postgresql.auth.postgresPassword | string | `"magistrala"` |  |
| postgresqlbootstrap.global.postgresql.auth.username | string | `"magistrala"` |  |
| postgresqlbootstrap.global.postgresql.service.ports.postgresql | int | `5432` |  |
| postgresqlbootstrap.host | string | `"postgresql-bootstrap"` |  |
| postgresqlbootstrap.name | string | `"postgresql-bootstrap"` |  |
| postgresqlbootstrap.password | string | `"magistrala"` |  |
| postgresqlbootstrap.port | int | `5432` |  |
| postgresqlbootstrap.primary.persistence.enabled | bool | `true` |  |
| postgresqlbootstrap.primary.persistence.size | string | `"2Gi"` |  |
| postgresqlbootstrap.primary.resources.limits.cpu | string | `"150m"` |  |
| postgresqlbootstrap.primary.resources.limits.memory | string | `"192Mi"` |  |
| postgresqlbootstrap.primary.resources.requests.cpu | string | `"100m"` |  |
| postgresqlbootstrap.primary.resources.requests.memory | string | `"128Mi"` |  |
| postgresqlbootstrap.sslCert | string | `""` |  |
| postgresqlbootstrap.sslKey | string | `""` |  |
| postgresqlbootstrap.sslMode | string | `"disable"` |  |
| postgresqlbootstrap.sslRootCert | string | `""` |  |
| postgresqlbootstrap.username | string | `"magistrala"` |  |
| postgresqlre.database | string | `"rules_engine"` |  |
| postgresqlre.enabled | bool | `true` |  |
| postgresqlre.global.postgresql.auth.database | string | `"rules_engine"` |  |
| postgresqlre.global.postgresql.auth.password | string | `"magistrala"` |  |
| postgresqlre.global.postgresql.auth.postgresPassword | string | `"magistrala"` |  |
| postgresqlre.global.postgresql.auth.username | string | `"magistrala"` |  |
| postgresqlre.global.postgresql.service.ports.postgresql | int | `5432` |  |
| postgresqlre.host | string | `"postgresql-re"` |  |
| postgresqlre.name | string | `"postgresql-re"` |  |
| postgresqlre.password | string | `"magistrala"` |  |
| postgresqlre.port | int | `5432` |  |
| postgresqlre.primary.persistence.enabled | bool | `true` |  |
| postgresqlre.primary.persistence.size | string | `"2Gi"` |  |
| postgresqlre.primary.resources.limits.cpu | string | `"150m"` |  |
| postgresqlre.primary.resources.limits.memory | string | `"192Mi"` |  |
| postgresqlre.primary.resources.requests.cpu | string | `"100m"` |  |
| postgresqlre.primary.resources.requests.memory | string | `"128Mi"` |  |
| postgresqlre.sslCert | string | `""` |  |
| postgresqlre.sslKey | string | `""` |  |
| postgresqlre.sslMode | string | `"disable"` |  |
| postgresqlre.sslRootCert | string | `""` |  |
| postgresqlre.username | string | `"magistrala"` |  |
| postgresqlreader.database | string | `"postgresreader"` |  |
| postgresqlreader.enabled | bool | `true` |  |
| postgresqlreader.global.postgresql.auth.database | string | `"postgresreader"` |  |
| postgresqlreader.global.postgresql.auth.password | string | `"magistrala"` |  |
| postgresqlreader.global.postgresql.auth.postgresPassword | string | `"magistrala"` |  |
| postgresqlreader.global.postgresql.auth.username | string | `"magistrala"` |  |
| postgresqlreader.global.postgresql.service.ports.postgresql | int | `5432` |  |
| postgresqlreader.host | string | `"postgresql-reader"` |  |
| postgresqlreader.name | string | `"postgresql-reader"` |  |
| postgresqlreader.password | string | `"magistrala"` |  |
| postgresqlreader.port | int | `5432` |  |
| postgresqlreader.primary.persistence.enabled | bool | `true` |  |
| postgresqlreader.primary.persistence.size | string | `"2Gi"` |  |
| postgresqlreader.primary.resources.limits.cpu | string | `"150m"` |  |
| postgresqlreader.primary.resources.limits.memory | string | `"192Mi"` |  |
| postgresqlreader.primary.resources.requests.cpu | string | `"100m"` |  |
| postgresqlreader.primary.resources.requests.memory | string | `"128Mi"` |  |
| postgresqlreader.sslCert | string | `""` |  |
| postgresqlreader.sslKey | string | `""` |  |
| postgresqlreader.sslMode | string | `"disable"` |  |
| postgresqlreader.sslRootCert | string | `""` |  |
| postgresqlreader.username | string | `"magistrala"` |  |
| postgresqlwriter.database | string | `"postgreswriter"` |  |
| postgresqlwriter.enabled | bool | `true` |  |
| postgresqlwriter.global.postgresql.auth.database | string | `"postgreswriter"` |  |
| postgresqlwriter.global.postgresql.auth.password | string | `"magistrala"` |  |
| postgresqlwriter.global.postgresql.auth.postgresPassword | string | `"magistrala"` |  |
| postgresqlwriter.global.postgresql.auth.username | string | `"magistrala"` |  |
| postgresqlwriter.global.postgresql.service.ports.postgresql | int | `5432` |  |
| postgresqlwriter.host | string | `"postgresql-writer"` |  |
| postgresqlwriter.name | string | `"postgresql-writer"` |  |
| postgresqlwriter.password | string | `"magistrala"` |  |
| postgresqlwriter.port | int | `5432` |  |
| postgresqlwriter.primary.persistence.enabled | bool | `true` |  |
| postgresqlwriter.primary.persistence.size | string | `"2Gi"` |  |
| postgresqlwriter.primary.resources.limits.cpu | string | `"150m"` |  |
| postgresqlwriter.primary.resources.limits.memory | string | `"192Mi"` |  |
| postgresqlwriter.primary.resources.requests.cpu | string | `"100m"` |  |
| postgresqlwriter.primary.resources.requests.memory | string | `"128Mi"` |  |
| postgresqlwriter.sslCert | string | `""` |  |
| postgresqlwriter.sslKey | string | `""` |  |
| postgresqlwriter.sslMode | string | `"disable"` |  |
| postgresqlwriter.sslRootCert | string | `""` |  |
| postgresqlwriter.username | string | `"magistrala"` |  |
| postgresreader.enabled | bool | `true` |  |
| postgresreader.httpPort | string | `"9090"` |  |
| postgresreader.httpServerCert | string | `""` |  |
| postgresreader.httpServerKey | string | `""` |  |
| postgresreader.image | object | `{}` |  |
| postgresreader.instanceId | string | `""` |  |
| postgresreader.replicaCount | int | `1` |  |
| postgresreader.resources.limits.cpu | string | `"200m"` |  |
| postgresreader.resources.limits.memory | string | `"256Mi"` |  |
| postgresreader.resources.requests.cpu | string | `"100m"` |  |
| postgresreader.resources.requests.memory | string | `"128Mi"` |  |
| postgreswriter.configPath | string | `"/config.toml"` |  |
| postgreswriter.httpPort | string | `"9010"` |  |
| postgreswriter.httpServerCert | string | `""` |  |
| postgreswriter.httpServerKey | string | `""` |  |
| postgreswriter.image | object | `{}` |  |
| postgreswriter.jaegerTraceRatio | float | `1` |  |
| postgreswriter.logLevel | string | `"error"` |  |
| postgreswriter.replicaCount | int | `1` |  |
| postgreswriter.resources.limits.cpu | string | `"200m"` |  |
| postgreswriter.resources.limits.memory | string | `"256Mi"` |  |
| postgreswriter.resources.requests.cpu | string | `"100m"` |  |
| postgreswriter.resources.requests.memory | string | `"128Mi"` |  |
| postgreswriter.sendTelemetry | string | `"true"` |  |
| provision.apiKey | string | `""` |  |
| provision.bootstrapUrl | string | `"http://bootstrap:9013"` |  |
| provision.bsAutoWhitelist | string | `"true"` |  |
| provision.bsConfigProvisioning | string | `"true"` |  |
| provision.bsContent | string | `""` |  |
| provision.certsHoursValid | string | `"2400h"` |  |
| provision.certsUrl | string | `"http://certs:9019"` |  |
| provision.clientsUrl | string | `"http://clients:9006"` |  |
| provision.configFile | string | `"/configs/config.toml"` |  |
| provision.enabled | bool | `true` |  |
| provision.envClientsTLS | string | `"false"` |  |
| provision.httpPort | int | `9016` |  |
| provision.image | object | `{}` |  |
| provision.instanceId | string | `""` |  |
| provision.logLevel | string | `"error"` |  |
| provision.password | string | `""` |  |
| provision.replicaCount | int | `1` |  |
| provision.resources.limits.cpu | string | `"200m"` |  |
| provision.resources.limits.memory | string | `"256Mi"` |  |
| provision.resources.requests.cpu | string | `"100m"` |  |
| provision.resources.requests.memory | string | `"128Mi"` |  |
| provision.serverCert | string | `""` |  |
| provision.serverKey | string | `""` |  |
| provision.user | string | `""` |  |
| provision.username | string | `""` |  |
| provision.usersUrl | string | `"http://users:9002"` |  |
| provision.x509Provisioning | string | `"false"` |  |
| re.grpcTimeout | string | `"300s"` |  |
| re.httpPort | int | `9008` |  |
| re.httpServerCert | string | `""` |  |
| re.httpServerKey | string | `""` |  |
| re.image.pullPolicy | string | `"IfNotPresent"` |  |
| re.image.repository | string | `"ghcr.io/absmach/magistrala/re"` |  |
| re.image.tag | string | `"latest"` |  |
| re.instanceId | string | `""` |  |
| re.jaegerTraceRatio | float | `1` |  |
| re.logLevel | string | `"error"` |  |
| re.replicaCount | int | `1` |  |
| re.resources.limits.cpu | string | `"200m"` |  |
| re.resources.limits.memory | string | `"256Mi"` |  |
| re.resources.requests.cpu | string | `"100m"` |  |
| re.resources.requests.memory | string | `"128Mi"` |  |
| re.sendTelemetry | string | `"true"` |  |
| supermq.auth.grpcServerCACerts | string | `""` |  |
| supermq.clients.grpcServerCACerts | string | `""` |  |
| supermq.enabled | bool | `true` |  |
| supermq.ingress.enabled | bool | `true` |  |
| supermq.nginx.hostname | string | `"localhost"` |  |
| timescaledb.database | string | `"supermq"` |  |
| timescaledb.enabled | bool | `true` |  |
| timescaledb.global.postgresql.auth.database | string | `"supermq"` |  |
| timescaledb.global.postgresql.auth.password | string | `"supermq"` |  |
| timescaledb.global.postgresql.auth.postgresPassword | string | `"supermq"` |  |
| timescaledb.global.postgresql.auth.username | string | `"supermq"` |  |
| timescaledb.global.postgresql.service.ports.postgresql | int | `5432` |  |
| timescaledb.host | string | `"timescalerw"` |  |
| timescaledb.image.registry | string | `"docker.io"` |  |
| timescaledb.image.repository | string | `"timescale/timescaledb"` |  |
| timescaledb.image.tag | string | `"latest-pg12"` |  |
| timescaledb.name | string | `"timescalerw"` |  |
| timescaledb.password | string | `"supermq"` |  |
| timescaledb.port | int | `5432` |  |
| timescaledb.primary.extraVolumeMounts[0].mountPath | string | `"/var/run/postgresql"` |  |
| timescaledb.primary.extraVolumeMounts[0].name | string | `"postgresql-run"` |  |
| timescaledb.primary.extraVolumes[0].emptyDir | object | `{}` |  |
| timescaledb.primary.extraVolumes[0].name | string | `"postgresql-run"` |  |
| timescaledb.primary.persistence.enabled | bool | `true` |  |
| timescaledb.primary.persistence.size | string | `"2Gi"` |  |
| timescaledb.primary.resources.limits.cpu | string | `"150m"` |  |
| timescaledb.primary.resources.limits.memory | string | `"192Mi"` |  |
| timescaledb.primary.resources.requests.cpu | string | `"100m"` |  |
| timescaledb.primary.resources.requests.memory | string | `"128Mi"` |  |
| timescaledb.reader.enabled | bool | `true` |  |
| timescaledb.reader.httpPort | int | `9011` |  |
| timescaledb.reader.httpServerCert | string | `""` |  |
| timescaledb.reader.httpServerKey | string | `""` |  |
| timescaledb.reader.image | object | `{}` |  |
| timescaledb.reader.instanceId | string | `""` |  |
| timescaledb.reader.logLevel | string | `"error"` |  |
| timescaledb.reader.sendTelemetry | bool | `true` |  |
| timescaledb.sslCert | string | `""` |  |
| timescaledb.sslKey | string | `""` |  |
| timescaledb.sslMode | string | `""` |  |
| timescaledb.sslRootCert | string | `""` |  |
| timescaledb.username | string | `"supermq"` |  |
| timescaledb.writer.enabled | bool | `true` |  |
| timescaledb.writer.httpPort | int | `9012` |  |
| timescaledb.writer.httpServerCert | string | `""` |  |
| timescaledb.writer.httpServerKey | string | `""` |  |
| timescaledb.writer.image | object | `{}` |  |
| timescaledb.writer.instanceId | string | `""` |  |
