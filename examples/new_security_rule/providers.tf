terraform {
  required_version = ">=1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.11.0, <4.0"
    }
    curl = {
      source  = "anschoewe/curl"
      version = "1.0.2"
    }
    random = {
      source = "hashicorp/random"

    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "curl" {}

provider "random" {}