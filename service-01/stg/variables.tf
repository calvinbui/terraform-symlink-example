locals {
  env    = "stg"
  region = "ap-southeast-2"

  vpc = {
    cidr   = "172.30.0.0/16"
    subnet = "172.30.1.0/24"
  }

  ec2 = {
    instance_type = "r6i.8xlarge"
    private_ip    = "172.30.1.100"
  }
}
