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

resource "yandex_vpc_network" "test_vpc" {
    name = "test_network"
    description = "Test network"
}

resource "yandex_vpc_subnet" "test_network" {
  count = length(var.ya_zones)
  zone = element(var.ya_zones, count.index)
  network_id = yandex_vpc_network.test_vpc.id
  v4_cidr_blocks = ["${element(var.vpc_cidr, count.index)}"]
  name = "testVPC-${element(var.ya_zones, count.index)}"
}