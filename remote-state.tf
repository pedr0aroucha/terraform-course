terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "pedr0aroucha"

    workspaces {
      name = "aws-dev"
    }

  }
}
