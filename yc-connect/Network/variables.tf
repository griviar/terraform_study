variable "vpc_cidr" {
  default = [
    "10.100.1.0/24",
    "10.100.2.0/24",
    "10.100.3.0/24",
  ]
}

variable "ya_zones" {
  default = [
    "ru-central1-a",
    "ru-central1-b",
    "ru-central1-c",
  ]
}