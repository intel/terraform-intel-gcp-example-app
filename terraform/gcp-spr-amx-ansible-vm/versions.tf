terraform {
  required_version = "~> 1.4" # see https://releases.hashicorp.com/terraform/

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.71"
    }
  }
  cloud {
    organization = "intel-hashicorp"
    workspaces {
      name = "intel-gcp-spr-amx-ansible-app"
    }
  }
}
