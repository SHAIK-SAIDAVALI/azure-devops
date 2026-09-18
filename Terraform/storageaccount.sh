#!/bin/bash
## The Storage account name must be unique, and the values below should match your backend.tf
RESOURCE_GROUP_NAME=demo-resources
STORAGE_ACCOUNT_NAME=devopsaidavali223786
CONTAINER_NAME=prod-tfstate

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location westus

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME