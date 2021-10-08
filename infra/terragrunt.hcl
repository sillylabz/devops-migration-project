terraform {
  source = "/Users/admin/dev-pjcts/infra-devops/terraform/aws//sample-vpc"
}

remote_state {
  backend = "local"
  config = {
    path = "${get_terragrunt_dir()}/terraform.tfstate"
  }
}

inputs = {
  aws_region = "us-east-1"
  vpc_cidr   = "10.93.0.0/16"
  subnet_cidrs = {
    public1   = "10.93.37.0/24",
    public2   = "10.93.38.0/24",
    public3   = "10.93.39.0/24",
    private1  = "10.93.47.0/24",
    private2  = "10.93.48.0/24",
    private3  = "10.93.49.0/24"
    database1 = "10.93.57.0/24",
    database2 = "10.93.58.0/24",
    database3 = "10.93.59.0/24"
  }

  environment  = "dev"
  project_name = "devops"
}

