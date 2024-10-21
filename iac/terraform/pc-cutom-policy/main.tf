terraform {
  required_providers {
    prismacloud = {
      source = "PaloAltoNetworks/prismacloud"
      version = "1.6.0" 
    }
  }
}

provider "prismacloud" {
    json_config_file = ".prismacloud_auth.json"
}