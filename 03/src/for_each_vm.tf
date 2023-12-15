data "yandex_compute_image" "ubuntu1" {
  family = var.vm_web_family
}

resource "yandex_compute_instance" "vm" {
  depends_on  = [yandex_compute_instance.web ]
  for_each =  { for vm in var.each_vm: index(var.each_vm,vm)=> vm }
  name        = each.value.name
  platform_id = var.platform_id

resources {
    cores  = each.value.cpu
    memory = each.value.ram
    core_fraction = each.value.core_fraction
  }

scheduling_policy {
    preemptible = true
  }

network_interface {
    subnet_id          = yandex_vpc_subnet.develop.id
    nat                = true
    security_group_ids = [
      var.security_group
    ]
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
      size = each.value.disk
    }
  }

 metadata = local.metadata
}
