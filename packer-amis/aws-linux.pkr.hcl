source "amazon-ebs" "golden-ami" {
  # skip_create_ami  = true
  vpc_id                = ""
  region                = var.aws_region
  force_deregister      = true
  force_delete_snapshot = true
  ami_name              = "${var.project_name}-${var.application_name}-{{timestamp}}"
  # iam_instance_profile      = "AmazonSSMRoleForInstancesQuickSetup"
  instance_type             = var.packer_instance_type
  source_ami                = var.packer_source_ami
  ssh_username = var.packer_ssh_username
  communicator              = "ssh"
  ssh_clear_authorized_keys = true
  ssh_interface             = "public_ip"
  ssh_timeout = "3m"

  launch_block_device_mappings {
    delete_on_termination = true
    device_name           = "/dev/sda1"
    volume_size           = 20
    volume_type           = "gp2"
    encrypted             = true
    kms_key_id            = var.packer_kms_key_id
  }
  run_tags        = var.tags
  run_volume_tags = var.tags

  tags = var.tags
}

build {
  sources = [
    "source.amazon-ebs.golden-ami"
  ]

  provisioner "ansible" {
    playbook_file = "${path.cwd}/ansible-playbooks/ssm-agent-playbook.yaml"
    # ansible_env_vars= [ "ANSIBLE_DEBUG=1" ]
  }

  provisioner "ansible" {
    playbook_file = "${path.cwd}/ansible-playbooks/${var.application_name}-playbook.yaml"
    # ansible_env_vars= [ "ANSIBLE_DEBUG=1" ]
  }
}

