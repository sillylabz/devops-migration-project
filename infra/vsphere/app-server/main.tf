
module "app-server1" {
  source = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/vsphere/single-vm-cloud"
  vsphere_server_url = "192.168.1.11"
  vsphere_user       = "administrator@vsphere.local"
  vsphere_password   = var.vsphere_password
  vsphere_datacenter = "dc-east"
  vsphere_cluster    = "lab-cluster"
  vm_datastore = "vmData"
  vm_name            = "app-server1"
  vm_disk_size = 50
  vm_domain = "labz.io"
  vm_ipv4_address = "192.168.1.63"
  vm_gateway = "192.168.1.1"
  vm_dns_server = "192.168.1.12"
  vm_dns_search_domain = "labz.io"
  // vm_count = 1
  vm_network     = "vmPub"
  vm_template    = "ubuntu22-templ-base-gold"
  vm_cpu         = 2
  vm_memory      = 4092
}
