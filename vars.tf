variable "amis" {
  type = map(string)

  default = {
    "us-east-1" = "ami-04505e74c0741db8d"
  }
}

variable "cdirs_acesso_remoto" {
  type = list(string)

  default = ["0.0.0.0/0"]
}

variable "key_name" {
  type = string

  default = "terraform-aws"
}
