terraform {
  # deploy using development branch
  source = "git@github.com:hernanku/infra-devops.git//terraform/aws/sample-vpc?ref=develop"
}

inputs = {
  aws_region = "us-east-1"
  vpc_cidr   = "10.108.0.0/16"
  subnet_cidrs = {
    public1   = "10.108.37.0/24",
    public2   = "10.108.38.0/24",
    public3   = "10.108.39.0/24",
    private1  = "10.108.47.0/24",
    private2  = "10.108.48.0/24",
    private3  = "10.108.49.0/24"
    database1 = "10.108.57.0/24",
    database2 = "10.108.58.0/24",
    database3 = "10.108.59.0/24"
  }

  environment  = "dev"
  project_name = "ansible"
}

