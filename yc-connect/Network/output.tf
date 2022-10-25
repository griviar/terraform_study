output "subnet1" {
  value = yandex_vpc_subnet.test_network[0].id
}

output "subnet2" {
  value = yandex_vpc_subnet.test_network[1].id
}

output "subnet3" {
  value = yandex_vpc_subnet.test_network[2].id
}