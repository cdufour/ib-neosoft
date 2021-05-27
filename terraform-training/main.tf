terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.12.2"
    }
    aws = {
      source = "hashicorp/aws"
      version = "3.42.0"
    }
  }
}

provider "docker" {}


variable "docker_img" {
  type = string
  default = "nginx:1.20-alpine"
}

# Pulls the image
resource "docker_image" "nginx" {
  name = var.docker_img
  keep_locally = false
}

# Create a container
resource "docker_container" "nginx1" {
  image = docker_image.nginx.latest
  name  = "nginx-demo1"

  ports {
    internal = 80
    external = 4001
  }
}

resource "docker_container" "nginx2" {
  image = docker_image.nginx.latest
  name  = "nginx-demo2"

  ports {
    internal = 80
    external = 4002
  }
}

resource "docker_container" "nginx3" {
  image = docker_image.nginx.latest
  name  = "nginx-demo3"

  ports {
    internal = 80
    external = 4003
  }
}

