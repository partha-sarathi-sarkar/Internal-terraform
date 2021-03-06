resource "azurerm_managed_disk" "example" {
  name                 = var.osdiskname
  location             = var.location
  resource_group_name  = var.resource_group_name
  storage_account_type = var.storage_account_type
  create_option        = var.create_option
  disk_size_gb         = "100"
  os_type              = "Linux"

  tags = {
    environment = var.environment
  }
}
