###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}
 
##for vms 2.1

variable "count_vm" {
  type        = number
  default     = "2"
}

variable "vm_name" {
  type        = string
  default     = "web"
}

variable "platform_id" {
  type        = string
  default     = "standard-v1"
}

variable "resourses" {
  type        = map
  default     = {
    web       = {core = 2, memory = 4, core_fraction = 20}
  }
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "image family"
}

variable "metadata" {
  type        = map
  default     = {serial_port_enable = "1", ssh_keys = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIN53ii69hQqHsHhrq6Y8QEZvBk5NG7Hie3nkyXuJD4HP root@stv-MS-7699"}
}

variable "security_group" {
  type        = string
  default     = "enp04bsqhmt0ofd33ka2"
}


###for vms 2.2

###variables for exercise 2.2
variable "each_vm" {
  type = list(object({  name=string, cpu=number, ram=number, disk=number,core_fraction=number }))
  default = [{
    name          = "main"
    cpu           = 2 
    ram           = 2
    disk          = 8
    core_fraction = 20
    },
    {
    name          = "replica"
    cpu           = 4
    ram           = 4
    disk          = 10
    core_fraction = 20
    }]
  }

### for disk_vm.tf
###variables for exercise 3

variable "count_d" {
  type        = number
  default     = "3"
}

variable "disk_name" {
  type        = string
  default     = "disk"
}

variable "disk_size" {
  type        = number
  default     = "1"
}

variable "storage_name" {
  type        = string
  default     = "storage"
}

variable "storage_core" {
  type        = number
  default     = "2"
}

variable "storage_memory" {
  type        = number
  default     = "4"
}

variable "storage_core_fraction" {
  type        = number
  default     = "5"
}

variable "public_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIN53ii69hQqHsHhrq6Y8QEZvBk5NG7Hie3nkyXuJD4HP root@stv-MS-7699"
}










