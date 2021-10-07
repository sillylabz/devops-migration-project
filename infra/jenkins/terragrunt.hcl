terraform {
  # deploy using development branch
  # source = "git@github.com:hernanku/infra-devops.git//terraform/aws/sample-ec2?ref=develop"
  source = "/Users/admin/dev-pjcts/infra-devops/terraform/aws//sample-ec2"
}

inputs = {
  aws_region            = "us-east-1"
  environment           = "dev"
  project_name          = "devops"
  application_name      = "jenkins"
  asg_instance_type     = "t2.micro"
  asg_health_check_type = "EC2"
  asg_ssh_key_name      = "always-dev-kp"
  asg_ami_id            = "ami-02e136e904f3da870"
  asg_block_device_mappings = [
    {
      device_name = "/dev/xvda"
      no_device   = 0
      ebs = {
        delete_on_termination = true
        encrypted             = true
        volume_size           = 30
        volume_type           = "gp2"
      }
    },
    {
      device_name = "/dev/sda1"
      no_device   = 1
      ebs = {
        delete_on_termination = true
        encrypted             = true
        volume_size           = 30
        volume_type           = "gp2"
      }
    }
  ]
  asg_elb_listeners = [
    {
      instance_port     = 22
      instance_protocol = "tcp"
      lb_port           = 22
      lb_protocol       = "tcp"
    },
  ]

  asg_elb_health_check = {
    target              = "TCP:22"
    interval            = 30
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
  }

}

