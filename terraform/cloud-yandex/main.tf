terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone                     = var.zone
  service_account_key_file = "authorized_key.json"
}

resource "yandex_compute_instance" "vm-1" {
  name                      = var.vm1_name
  folder_id                 = var.folder_id
  allow_stopping_for_update = true

  resources {
    cores  = var.vm1_cores
    memory = var.vm1_memory
  }

  boot_disk {
    initialize_params {
      image_id = var.vm_boot_image
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "yandex_compute_instance" "vm-2" {
  name                      = var.vm2_name
  folder_id                 = var.folder_id
  allow_stopping_for_update = true

  resources {
    cores  = var.vm_cores
    memory = var.vm_memory
  }

  boot_disk {
    initialize_params {
      image_id = var.vm_boot_image
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "yandex_compute_instance" "vm-3" {
  name                      = var.vm3_name
  folder_id                 = var.folder_id
  allow_stopping_for_update = true

  resources {
    cores  = var.vm_cores
    memory = var.vm_memory
  }

  boot_disk {
    initialize_params {
      image_id = var.vm_boot_image
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "yandex_vpc_network" "network-1" {
  name      = var.network_name
  folder_id = var.folder_id
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = var.subnetwork_name
  zone           = var.zone
  folder_id      = var.folder_id
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}
