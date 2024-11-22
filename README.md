# tf-az-module-azure-kubernetes-cluster-extension
Terraform module for creating an Azure Kubernetes cluster extension


Manages a Kubernetes Cluster Extension.

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#example-usage)

```hcl
resource "azurerm_resource_group" "example" { name = "example-resources" location = "West Europe" } resource "azurerm_kubernetes_cluster" "example" { name = "example-aks" location = "West Europe" resource_group_name = azurerm_resource_group.example.name dns_prefix = "example-aks" default_node_pool { name = "default" node_count = 1 vm_size = "Standard_DS2_v2" } identity { type = "SystemAssigned" } } resource "azurerm_kubernetes_cluster_extension" "example" { name = "example-ext" cluster_id = azurerm_kubernetes_cluster.example.id extension_type = "microsoft.flux" }
```

## [Arguments Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#arguments-reference)

The following arguments are supported:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#name-3) - (Required) Specifies the name which should be used for this Kubernetes Cluster Extension. Changing this forces a new Kubernetes Cluster Extension to be created.
    
-   [`cluster_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#cluster_id-1) - (Required) Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created.
    
-   [`extension_type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#extension_type-1) - (Required) Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for AKS](https://learn.microsoft.com/en-us/azure/aks/cluster-extensions?tabs=azure-cli#currently-available-extensions). Changing this forces a new Kubernetes Cluster Extension to be created.
    
-   [`configuration_protected_settings`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#configuration_protected_settings-1) - (Optional) Configuration settings that are sensitive, as name-value pairs for configuring this extension.
    
-   [`configuration_settings`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#configuration_settings-1) - (Optional) Configuration settings, as name-value pairs for configuring this extension.
    
-   [`plan`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#plan-1) - (Optional) A `plan` block as defined below. Changing this forces a new resource to be created.
    
-   [`release_train`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#release_train-1) - (Optional) The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Kubernetes Cluster Extension to be created.
    
-   [`release_namespace`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#release_namespace-1) - (Optional) Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created.
    
-   [`target_namespace`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#target_namespace-1) - (Optional) Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created.
    
-   [`version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#version-1) - (Optional) User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Kubernetes Cluster Extension to be created.
    

___

A `plan` block supports the following:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#name-4) - (Required) Specifies the name of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created.
    
-   [`product`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#product-1) - (Required) Specifies the product of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created.
    
-   [`publisher`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#publisher-1) - (Required) Specifies the publisher of the plan. Changing this forces a new Kubernetes Cluster Extension to be created.
    
-   [`promotion_code`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#promotion_code-1) - (Optional) Specifies the promotion code to use with the plan. Changing this forces a new Kubernetes Cluster Extension to be created.
    
-   [`version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#version-2) - (Optional) Specifies the version of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created.
    

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#attributes-reference)

In addition to the Arguments listed above - the following Attributes are exported:

-   [`id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#id-2) - The ID of the Kubernetes Cluster Extension.
    
-   [`aks_assigned_identity`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#aks_assigned_identity-1) - An `aks_assigned_identity` block as defined below.
    
-   [`current_version`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#current_version-1) - The current version of the extension.
    

___

An `aks_assigned_identity` block exports the following:

-   [`type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#type-3) - The identity type.
    
-   [`principal_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#principal_id-2) - The principal ID of resource identity.
    
-   [`tenant_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#tenant_id-4) - The tenant ID of resource.
    

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/docs/configuration/resources.html#timeouts) for certain actions:

-   [`create`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#create-2) - (Defaults to 30 minutes) Used when creating the Kubernetes Cluster Extension.
-   [`read`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#read-2) - (Defaults to 5 minutes) Used when retrieving the Kubernetes Cluster Extension.
-   [`update`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#update-2) - (Defaults to 30 minutes) Used when updating the Kubernetes Cluster Extension.
-   [`delete`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#delete-2) - (Defaults to 30 minutes) Used when deleting the Kubernetes Cluster Extension.

## [Import](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_extension#import)

Kubernetes Cluster Extension can be imported using the `resource id` for different `cluster_resource_name`, e.g.

```shell
terraform import azurerm_kubernetes_cluster_extension.example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1/providers/Microsoft.KubernetesConfiguration/extensions/extension1
```