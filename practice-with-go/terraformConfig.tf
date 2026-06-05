terraform {
  required_version = ">= 1.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "hello" {
  filename = "hello.txt"
  content  = "Bonjour Terraform"
}
provider "docker"
resource "docker_image" "nginx" {
 nampe= "nginix:latest"
}
resource "docker-container" "web" {
 name = "test-container"
 image= docker_image.nginx.image_id


 ports{
     internal= 80
     external=8080
  }
}
