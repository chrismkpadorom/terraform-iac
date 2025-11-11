resource "azurerm_role_assignment" "container_ra" {
  scope                =  azurerm_storage_container.st_container.resource_manager_id  
  role_definition_name = "Storage Blob Data Reader"
  principal_id         = var.ad_group
}
