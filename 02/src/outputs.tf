output "vm_nodes" {
  value = {
    instance_name_vm1 = yandex_compute_instance.platform.name
    external_ip_vm1 = yandex_compute_instance.platform.network_interface.0.nat_ip_address
    instance_name_vm2 = yandex_compute_instance.platform1.name
    external_ip_vm2 = yandex_compute_instance.platform1.network_interface.0.nat_ip_address
  }
}
