variable "zone" {
  description = "Name of the zone in YC"
  type        = string
  default     = "ru-central1-a"
}

variable "folder_id" {
  description = "Folder ID for resources in YC"
  type        = string
  default     = "b1gpsenvjdaerisnl6li"
}

variable "vm1_name" {
  description = "Name of the 1st virtual machine in YC"
  type        = string
  default     = "ls-lab3-vladislav-lamzenkov-server"
}

variable "vm2_name" {
  description = "Name of the 2nd virtual machine in YC"
  type        = string
  default     = "ls-lab3-vladislav-lamzenkov-runner"
}

variable "vm3_name" {
  description = "Name of the 3rd virtual machine in YC"
  type        = string
  default     = "ls-lab3-vladislav-lamzenkov-deployment"
}

variable "network_name" {
  description = "Name of the network in YC"
  type        = string
  default     = "network1"
}

variable "subnetwork_name" {
  description = "Name of the subnetwork in YC"
  type        = string
  default     = "subnet1"
}

variable "vm_cores" {
  description = "Number of cores for the virtual machine in YC"
  type        = number
  default     = 2
}

variable "vm1_cores" {
  description = "Number of cores for the 1-st virtual machine in YC"
  type        = number
  default     = 4
}

variable "vm_memory" {
  description = "Size of RAM for the virtual machine in YC"
  type        = number
  default     = 2
}

variable "vm1_memory" {
  description = "Size of RAM for the 1-st virtual machine in YC"
  type        = number
  default     = 4
}

variable "vm_boot_image" {
  description = "Boot image ID for the virtual machine in YC"
  type        = string
  default     = "fd8kdq6d0p8sij7h5qe3"
}