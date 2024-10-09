#### Creation of Azure infra ##########
#######################################

#### Create Azure Resource Group ######
resource "azurerm_resource_group" "rg" {
  name            = var.az_rg_name
  location        = var.az_location

  tags            = var.tags
}