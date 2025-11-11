module "pep_st_blob" {
  source = "git@github.com:username/repo.git//network/pep?ref=v1.0.0"

  name              = "pep-${module.security_st.name}-blob"
  location          = data.st_rg.location
  resource_group    = data.st_rg.name
  pe_subnet_id      = data.azurerm_subnet.spoke_sub.id
  resource_id       = module.st.id
  subresource_names = ["blob"]
  tags              = local.tags
}
