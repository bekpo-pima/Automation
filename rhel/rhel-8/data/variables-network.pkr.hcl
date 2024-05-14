# Copyright 2023-2024 BEKPO All rights reserved.

/*
    DESCRIPTION:
    Red Hat Enterprise Linux 8 network variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// VM Network Settings

variable "vlan" {
    default = "VLAN 400"
}
variable "dc" {
    default = "Involta"
}

variable "dsc" {
    default = "INV-Nutanix"
}

variable "ssh_password" {
    type = string
    sensitive = true
    default = "TestPass"
}

variable "domain-1" {
  type = string
  default = "pima.edu"
}

variable "domain-2" {
  type = string
  default = "linux.pima.edu"
}

variable "domain-3" {
  type = string
  default = "pcc-domain.pima.edu"
}

variable "domain-4" {
  type = string
  default = "edu-domain.pima.edu"
}

variable "ipv4_address" {
  type = string
  description = "The IP address of the VM (e.g. 172.16.100.192)."
  default = "10.200.68.208"
}

variable "ipv4_netmask" {
  type = number
  default = 24
}

variable "ipv4_gateway" {
  type = string
  description = "The gateway of the VM (e.g. 172.16.100.1)."
  default = "10.200.68.1"
}

variable "vm_network_device" {
  type        = string
  description = "The network device of the VM."
  default     = "ens192"
}

variable "vm_ip_gateway" {
  type        = string
  description = "The gateway of the VM (e.g. 172.16.100.1)."
  default     = null
}

variable "vm_dns_list" {
  type        = list(string)
  description = "The nameservers of the VM."
  default     = ["10.200.128.8", "10.200.128.9", "10.201.128.8"]
}
