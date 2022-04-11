terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
      version = "1.14.0"
    }
  }

  backend "azurerm" {}

}

provider "fortios" {
  hostname = "<IP>"
  insecure = "true"
}

module "fw_system" {
  source             = "./fgsystem"
  dns_primary_ipv4   = "1.1.1.1"
  dns_secondary_ipv4 = "1.0.0.1"
  dns_interface      = "wan2"
  system_alias       = "FG80F"
  system_hostname    = "FG80F"
}