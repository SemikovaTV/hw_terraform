###vm1

variable "vm_web_family" {
  type	      = string
  default     = "ubuntu-2004-lts"
  description = "image family vm1"
}

/*
  variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "resource name vm1"
}
*/

variable "vm_web_platform"{
  type        = string
  default     = "standard-v1"
  description = "platform_id vm1"
}

variable "vm_web_cores" {
  type        = string
  default     = "2"
  description = "cores vCPU vm1"
}

variable "vm_web_memory"{
  type        = string
  default     = "1"
  description = "vm memory vm1"
}

variable "vm_web_core_fraction" {
  type        = string
  default     = "5"
  description = "core fraction vm1"
}

###vm2
variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "image family"
}

/*
variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "resource name"
}
*/

variable "vm_db_platform"{
  type        = string
  default     = "standard-v1"
  description = "platform_id"
}

variable "vm_db_cores" {
  type        = string
  default     = "2"
  description = "cores vCPU"
}

variable "vm_db_memory"{
  type        = string
  default     = "2"
  description = "vm memory"
}

variable "vm_db_core_fraction" {
  type        = string
  default     = "20"
  description = "core fraction"
}
