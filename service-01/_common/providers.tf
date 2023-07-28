provider "aws" {
  default_tags {
    tags = {
      service = local.app
      env     = local.env
    }
  }
}
