###vm1

variable "vm_web_family" {
  type	      = string
  default     = "ubuntu-2004-lts"
  description = "image family vm1"
}

###vm2
variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "image family"
}

variable "vm_db_platform"{
  type        = string
  default     = "standard-v1"
  description = "platform_id"
}


###for vms resources
variable "vms_resources" {
  description = "resources for vms"
  type        = map(map(number))
  default     = {
    vm_web_resources = {
      cores   = 2
      memory  = 1
      core_fraction = 5
    }
    vm_db_resources = {
      cores   = 2
      memory  = 2
      core_fraction = 20
    }
  }
}

variable "vms_metadata" {
  type        = map (string)
  default     = {
    serial-port-enable = "1"
    ssh-keys           = "sh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILtBJkOErFb1rvkR8pN3gqleR9FdMmNZ3SML2MXC0oJs root@stv-MS-7699"
  }
}
