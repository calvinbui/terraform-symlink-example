terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "autopilothq"

    workspaces {
      name = "prod-service-01"
    }
  }
}
