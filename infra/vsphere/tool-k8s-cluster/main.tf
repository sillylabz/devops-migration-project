terraform {
  backend "local" {}
}

module "control_plane1" {
  source = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/vsphere/single-vm-cloud"
  vsphere_server_url = "10.0.0.31"
  vsphere_user       = "administrator@vsphere.local"
  vsphere_password   = var.vsphere_password
  vsphere_datacenter = "dc-east"
  vsphere_cluster    = "dev-cluster"
  vm_datastore = "vmData"
  vm_name            = "tool-k8s-cp1"
  vm_disk_size = 50
  vm_domain = "labz.io"
  vm_ipv4_address = "10.0.0.83"
  vm_gateway = "10.0.0.1"
  vm_dns_server = "10.0.0.33"
  // vm_count = 1
  vm_network     = "vmPub"
  vm_template    = "base-ubuntu22-templ"
  vm_cpu         = 2
  vm_memory      = 4096
}

module "node1" {
  source = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/vsphere/single-vm-cloud"
  vsphere_server_url = "10.0.0.31"
  vsphere_user       = "administrator@vsphere.local"
  vsphere_password   = var.vsphere_password
  vsphere_datacenter = "dc-east"
  vsphere_cluster    = "dev-cluster"
  vm_datastore = "vmData"
  vm_name            = "tool-k8s-node1"
  vm_disk_size = 30
  vm_domain = "labz.io"
  vm_ipv4_address = "10.0.0.84"
  vm_gateway = "10.0.0.1"
  vm_dns_server = "10.0.0.33"
  // vm_count = 1
  vm_network     = "vmPub"
  vm_template    = "base-ubuntu22-templ"
  vm_cpu         = 2
  vm_memory      = 4096
}

module "node2" {
  source = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/vsphere/single-vm-cloud"
  vsphere_server_url = "10.0.0.31"
  vsphere_user       = "administrator@vsphere.local"
  vsphere_password   = var.vsphere_password
  vsphere_datacenter = "dc-east"
  vsphere_cluster    = "dev-cluster"
  vm_datastore = "vmData"
  vm_name            = "tool-k8s-node2"
  vm_disk_size = 30
  vm_domain = "labz.io"
  vm_ipv4_address = "10.0.0.85"
  vm_gateway = "10.0.0.1"
  vm_dns_server = "10.0.0.33"
  // vm_count = 1
  vm_network     = "vmPub"
  vm_template    = "base-ubuntu22-templ"
  vm_cpu         = 2
  vm_memory      = 4096
}
module "node3" {
  source = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/vsphere/single-vm-cloud"
  vsphere_server_url = "10.0.0.31"
  vsphere_user       = "administrator@vsphere.local"
  vsphere_password   = var.vsphere_password
  vsphere_datacenter = "dc-east"
  vsphere_cluster    = "dev-cluster"
  vm_datastore = "vmData"
  vm_name            = "tool-k8s-node3"
  vm_disk_size = 30
  vm_domain = "labz.io"
  vm_ipv4_address = "10.0.0.86"
  vm_gateway = "10.0.0.1"
  vm_dns_server = "10.0.0.33"
  // vm_count = 1
  vm_network     = "vmPub"
  vm_template    = "base-ubuntu22-templ"
  vm_cpu         = 2
  vm_memory      = 4096
}

