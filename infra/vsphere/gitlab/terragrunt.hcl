terraform {
  # deploy using development branch
  source = "git::https://github.com/hernanku/infra-devops.git//terraform/vmware/vsphere/single-vm?ref=develop"
  // source = "/Users/admin/dev-projects/infra-devops/terraform/vmware/vsphere//single-vm"
}

remote_state {
  backend = "artifactory"
  config = {
    username = "automation_cli"
    password = "Devops123"
    url      = "http://10.0.0.64:8081/artifactory"
    repo     = "infra-devops-terraform"
    subpath  = "gitlab/terraform.tfstate"
  }
}

inputs = {
  vsphere_server_url = "10.0.0.25"
  vsphere_user       = "administrator@vsphere.local"
  vsphere_password   = ""
  vsphere_datacenter = "dc-east"
  vsphere_cluster    = "lab-cluster"
  vm_datastore       = "vmData1"
  vm_name            = "gitlab"
  // vm_count = 1
  vm_network     = "vmPublic"
  vm_template    = "base-centos8"
  vm_baseip      = "10.0.0"
  vm_ip_suffix   = "61"
  vm_netmask     = 24
  vm_gateway     = "10.0.0.1"
  vm_dns_servers = ["10.0.0.24"]
  vm_domain      = "labz.io"
  vm_cpu         = 2
  vm_memory      = 4096
}