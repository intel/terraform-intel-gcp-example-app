terraform {
  required_version = "~> 1.3.0" # see https://releases.hashicorp.com/terraform/

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.50"
    }
  }
  cloud {
    organization = "intel-hashicorp"
    workspaces {
      name = "intel-gcp-spr-amx-ansible-app"
    }
  }
}
