
locals {

  naming_convention_info = {
    site = "sg"
    name = "001"
    app = "web"
    env = "prd"
  }

  tags = {
    createdBy = "Terraform"
  }

}

module "resource_groups" {
  source = "git::https://github.com/BrettOJ/tf-az-module-resource-group?ref=main"
  resource_groups = {
    1 = {
      name                   = var.resource_group_name
      location               = var.location
      naming_convention_info = local.naming_convention_info
      tags = {

      }
    }
  }
}


resource "azurerm_kubernetes_cluster" "example" {
  name                = "example-aks"
  location            = "West Europe"
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "example-aks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

module "azurerm_kubernetes_cluster_extension" {
  source      = "../"
  cluster_id     = var.cluster_id
  extension_type = var.extension_type
    release_train  = var.release_train
    release_namespace = var.release_namespace
    target_namespace = var.target_namespace
    version = var.version
    configuration_settings = var.configuration_settings
    configuration_protected_settings = var.configuration_protected_settings
    tags = local.tags
    naming_convention_info = local.naming_convention_info

    plan = {
        name          = var.plan_name
        product       = var.plan_product
        publisher     = var.plan_publisher
        promotion_code = var.plan_promotion_code
        version       = var.plan_version
    }

}
