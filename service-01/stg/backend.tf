terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "autopilothq"

    workspaces {
      name = "stg-service-01"
    }
  }
}
