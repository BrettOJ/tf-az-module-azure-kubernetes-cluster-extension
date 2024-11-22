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

variable "plan" {
  description = "The plan of the extension."
  type = object({
    name          = string
    product       = string
    publisher     = string
    promotion_code = string
    version       = string
  })
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type = map
  default = {}
}

variable "naming_convention_info" {
  description = "The naming convention information."
  type = object({
    name = string
    site = string
    env  = string
    app  = string
  })
}