terraform {
   backend "azurerm" {
    resource_group_name  = "rg-demo-storage"
    storage_account_name = "demostorage1541"
    container_name       = "tf-container"
    key   = "demo.terraform.tfstate"       # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
  }