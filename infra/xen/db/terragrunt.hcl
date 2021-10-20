terraform {
  # deploy using development branch
  # source = "git@github.com:hernanku/infra-devops.git//terraform/aws/sample-ec2?ref=develop"
  source = "/Users/admin/dev-pjcts/packer-scripts/xenserver//terraform-vm"
}

remote_state {
  backend = "local"
  config = {
    path = "${get_terragrunt_dir()}/terraform.tfstate"
  }
}

inputs = {
  project_name = "appdb"
  environment  = "qa"

  xen_host_url   = "ws://10.0.0.24"
  xen_username   = "admin"
  xen_password   = "PrankWe66!"
  xen_sr_name    = "Local storage"
  xen_pool       = "xcp-labz01"
  xen_sr_id      = "4436050c-97cc-357f-7b27-2adcf49752d5"
  xen_network_id = "adff2a4e-6536-5c70-d18b-7c2f899fc84d"
  xen_cloud_config_name     = "linux-init-config"

  vm_disk_size_in_bytes = 64424509440
  vm_cpus               = 1
  vm_memory_max         = 2147483648
  vm_template_name      = "base-centos8-templ"
}

