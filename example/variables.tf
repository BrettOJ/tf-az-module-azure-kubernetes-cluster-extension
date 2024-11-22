variable "resource_group_name" {
    description = "The name of the resource group in which the Kubernetes cluster is created."
    type = string
}

variable "location" {
    description = "The location of the resource group in which the Kubernetes cluster is created."
    type = string
}

variable "cluster_id" {
  description = "The ID of the Kubernetes cluster."
  type = string
}

variable "extension_type" {
  description = "The type of extension."
  type = string
}

variable "configuration_protected_settings" {
  description = "Configuration settings that are sensitive, as name-value pairs for configuring this extension."
  type = map
  default = {}
}

variable "configuration_settings" {
  description = "Configuration settings, as name-value pairs for configuring this extension."
  type = map
  default = {}
}

variable "release_train" {
  description = "The release train used by this extension."
  type = string
  default = "Stable"
}

variable "release_namespace" {
  description = "Namespace where the extension release must be placed for a cluster scoped extension."
  type = string
  default = ""
}

variable "target_namespace" {
  description = "Namespace where the extension will be created for a namespace scoped extension."
  type = string
  default = ""
}

variable "version" {
  description = "User-specified version that the extension should pin to."
  type = string
  default = ""
}

variable "plan_name" {
  description = "The name of the plan."
  type = string
}

variable "plan_product" {
    description = "The product of the plan."
    type = string
}

variable "plan_publisher" {
    description = "The publisher of the plan."
    type = string
}

variable "plan_promotion_code" {
    description = "The promotion code of the plan."
    type = string
}

variable "plan_version" {
    description = "The version of the plan."
    type = string
}
