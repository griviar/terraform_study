#--------------
#Test terraform 
#--------------

terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  zone = "ru-central1-a"
}

#------------------------

variable "vpc_cidr" {
  default = [
    "10.100.1.0/24",
    "10.100.2.0/24",
  ]
}



#------------------------

resource "yandex_vpc_network" "test_vpc" {
    name = "test_network"
}

resource "yandex_vpc_network" "test_network" {
  count = lenght()
}

