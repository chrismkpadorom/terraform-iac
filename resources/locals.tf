locals {
  tags = {
    owner                = jsonencode(
      {
        businessUnit = "IT unit"
        upn          = "me@example.com"
      } )
    createdBy              = "terraform"
    accountingUnit       = "000 000 00"
    description          = "tags for project"
    environment          = var.environment
  }
  # Storage RG with two azure storage 1 datalake gen2 storage and one file share storage
  rg_name       = "rg-${var.location}-${var.environment}-rg"
  storage_name  = "st${var.location}${var.environment}storage"
