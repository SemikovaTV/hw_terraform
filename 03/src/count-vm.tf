data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_family
}
resource "yandex_compute_instance" "web" {
  count = var.count_vm	
  name        = "${var.vm_name}-${count.index + 1}"
  platform_id = var.platform_id
  resources {
    cores         = var.resourses.web.core
    memory        = var.resourses.web.memory
    core_fraction = var.resourses.web.core_fraction
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
  metadata = var.metadata
}

