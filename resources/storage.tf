########################################################
# -----------     storage accounts      ----------------
########################################################

module "st" {
  source = "git@github.com:username/repo_name.git//storage?ref=v1.1.0"

  location                            = var.azureRegion
  storage_account_resource_group_name = data.azurerm_resource_group.st_rg.name
  name                                = local.st_name
  storage_account_is_gen2             = true
  public_network_access_enabled       = true
  use_databricks_subnets              = true
  retention_policy                    = true
  retention_days                      = 14
  storage_account_replication_type    = var.replication_type 
  tags                                = local.tags

}
########################################################
# -----------     storage container      --------------
########################################################
resource "azurerm_storage_container" "st_container" {
  name                 = "container name"
  storage_account_name = module.st.name
}
