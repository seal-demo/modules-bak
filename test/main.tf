resource "kubernetes_deployment" "example" {
  metadata {
    name = "example-deployment"
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
          name  = "example-container"
          ports {
            container_port = var.container_port
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