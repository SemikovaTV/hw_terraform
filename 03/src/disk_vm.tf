resource "yandex_compute_disk" "disk" {
  count   = var.count_d
  name  = "${var.disk_name}-${count.index + 1}"
  size  = var.disk_size
}

resource "yandex_compute_instance" "storage" {
  name = var.storage_name
  resources {
        cores           = var.storage_core
        memory          = var.storage_memory
        core_fraction   = var.storage_core_fraction
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
    }
  }

dynamic "secondary_disk" {
   for_each = "${yandex_compute_disk.disk.*.id}"
   content {
        disk_id = yandex_compute_disk.disk["${secondary_disk.key}"].id
   }
  }

metadata = local.metadata
}
