resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = merge(
    var.common_tags,
    {
      Environment = var.environment
      CreatedBy   = "Terraform"
    }
  )
}
