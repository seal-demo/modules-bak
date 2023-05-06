
# Module `anta-demo`

Provider Requirements:
* **kubernetes:** (any version)

## Input Variables
* `container_port` (default `80`)
* `database_url` (default `"postgres://user:password@host:port/dbname"`)
* `environment` (default `"production"`)
* `image` (default `"nginx:latest"`)
* `replicas` (default `1`)

## Managed Resources
* `kubernetes_deployment.example` from `kubernetes`

