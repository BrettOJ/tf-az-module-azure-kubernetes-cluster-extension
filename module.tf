resource "azurerm_kubernetes_cluster_extension" "example" {
  name           = module.aksext_name.naming_convention_output[var.naming_convention_info.name].names.0
  cluster_id     = var.cluster_id
  extension_type = var.extension_type
    release_train  = var.release_train
    release_namespace = var.release_namespace
    target_namespace = var.target_namespace
    version = var.version
    configuration_settings = var.configuration_settings
    configuration_protected_settings = var.configuration_protected_settings

    plan {
        name          = var.plan.name
        product       = var.plan.product
        publisher     = var.plan.publisher
        promotion_code = var.plan.promotion_code
        version       = var.plan.version
    }

}