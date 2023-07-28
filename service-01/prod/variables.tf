locals {
  env    = "prod"
  region = "eu-central-1"

  vpc = {
    cidr   = "172.22.0.0/16"
    subnet = "172.22.1.0/24"
  }

  ec2 = {
    instance_type = "m5.xlarge"
    private_ip    = "172.22.1.100"
  }
}
