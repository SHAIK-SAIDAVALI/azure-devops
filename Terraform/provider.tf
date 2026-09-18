terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.6.0"
    }
  }
  
    backend "azurerm" {
    resource_group_name = "demo-resources"
    storage_account_name = "devopsaidavali223786"
    container_name = "prod-tfstate"
    key = "prod.terraform.tfstate"
}
}


provider "azurerm" {
  features {}
}