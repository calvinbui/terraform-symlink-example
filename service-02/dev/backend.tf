terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "autopilothq"

    workspaces {
      name = "dev-service-02"
    }
  }
}
