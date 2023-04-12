
module "app-server1" {
  source = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/vsphere/single-vm"
  vsphere_server_url = "192.168.1.11"
  vsphere_user       = "administrator@vsphere.local"
  vsphere_password   = var.vsphere_password
  vsphere_datacenter = "dc-east"
  vsphere_cluster    = "lab-cluster"
  vm_datastore = "vmData"
  vm_name            = "app-server1"
  vm_disk_size = 50
  vm_domain = "labz.io"
  vm_ip = "192.168.1.46"
  vm_gateway = "192.168.1.1"
  // vm_count = 1
  vm_network     = "vmPub"
  vm_template    = "centos7-base-templ-gold"
  vm_cpu         = 1
  vm_memory      = 2048
  vm_customize_timeout = 2
  // vm_baseip      = "192.168.1"
  // vm_ip_suffix   = "40"
  vm_netmask     = 24
  vm_dns_servers = ["192.168.1.12"]

}
