terraform {
  cloud {
    organization = "infobyte"
    workspaces {
      name = "terraform_iaac_dev"
    }
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "api_token" {
  type        = string
  description = "value of the DigitalOcean API token"
  sensitive   = true
}

provider "digitalocean" {
  token = var.api_token
}
