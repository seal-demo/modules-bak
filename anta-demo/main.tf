resource "kubernetes_deployment" "example" {
  metadata {
    name = "example"
    labels = {
      app = "example"
    }
  }

  spec {
    replicas = var.replicas
    selector {
      match_labels = {
        app = "example"
      }
    }
    template {
      metadata {
        labels = {
          app = "example"
        }
      }
      spec {
        container {
          image = var.image
          name  = "example"
          ports {
            container_port = var.container_port
          }
          env {
            name  = "ENVIRONMENT"
            value = var.environment
          }
          env {
            name  = "DATABASE_URL"
            value = var.database_url
          }
        }
      }
    }
  }
}

variable "replicas" {
  type    = number
  default = 1
}

variable "image" {
  type    = string
  default = "nginx:latest"
}

variable "container_port" {
  type    = number
  default = 80
}

variable "environment" {
  type    = string
  default = "production"
}

variable "database_url" {
  type    = string
  default = "postgres://user:password@host:port/dbname"
}