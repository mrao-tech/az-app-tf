# Copyright IBM Corp. 2014, 2025
# SPDX-License-Identifier: MPL-2.0

variable "location" {
  type        = string
  description = "The Azure location where all resources in this example should be created"
}

variable "azure_rg" {
  type = string
  description = "The name of the resource group."
}

variable "azure_winsp" {
  type = string
  description = "The details about the Azure Windows AppService plan"
}

variable "azure_winsku" {
  type = string
  description = "App service plan sku details"
}

variable "azure_winapp" {
  type = string
  description = "Name of the azure Winapp"
}