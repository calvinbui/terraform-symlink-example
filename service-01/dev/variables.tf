locals {
  env    = "dev"
  region = "us-east-2"

  vpc = {
    cidr   = "172.16.0.0/16"
    subnet = "172.16.1.0/24"
  }

  ec2 = {
    instance_type = "t3.micro"
    private_ip    = "172.16.1.100"
  }
}
