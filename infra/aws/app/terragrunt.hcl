terraform {
  # deploy using development branch
  source = "git::https://github.com/hernanku/infra-devops.git//terraform/aws/sample-ec2?ref=develop"
  # source = "/Users/admin/dev-pjcts/packer-scripts/xenserver/terraform-vm"
}

remote_state {
  backend = "s3"
  config = {
    bucket = "cloudops-remote-state20210623162046416500000002"
    region = "us-east-1"
    key    = "${path_relative_to_include()}/terraform.tfstate"
  }
}


inputs = {
  aws_region = "us-east-1"
  project_name  = "sandbox"
  application_name  = "cicd"
  environment  = "ocs"
  owner = "Humberto Pombo"
  cost_center = "1495"

  subnet_filter_tag = "OCS_Zone*"
  elb_healthy_threshold = 2
  elb_unhealthy_threshold = 2
  elb_timeout = 3
  elb_interval = 30

  asg_elb_listeners = []
  asg_ssh_key_name = "OCS_Prod"
  asg_grace = 300
  min_size = 1
  max_size = 15
  desired_capacity = 1
  health_check_type = "ELB"
  asg_instance_type = "t3.medium"
  asg_ami_id = "ami-0cde254ff022fc089"
  asg_block_device_mappings = []

  initial_lifecycle_hooks = [
    {
      name                 = "StartupLifeCycleHook"
      default_result       = "CONTINUE"
      heartbeat_timeout    = 120
      lifecycle_transition = "autoscaling:EC2_INSTANCE_LAUNCHING"
      notification_metadata = <<EOF
    {
      "status": "Instance launching"
    }
    EOF
    },
    {
      name                 = "TerminationLifeCycleHook"
      default_result       = "CONTINUE"
      heartbeat_timeout    = 120
      lifecycle_transition = "autoscaling:EC2_INSTANCE_TERMINATING"
      notification_metadata = <<EOF
    {
      "status": "Instance terminating"
    }
    EOF
    }
  ]
  asg_block_device_mappings = [
    {
      # Root volume
      device_name = "/dev/xvda"
      no_device   = 0
      ebs = {
        delete_on_termination = true
        encrypted             = true
        volume_size           = 50
        volume_type           = "gp2"
      }
    }
  ]
}

