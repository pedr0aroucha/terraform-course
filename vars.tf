variable "amis" {
  type = map(string)

  default = {
    "us-east-1" = "ami-04505e74c0741db8d"
    "us-east-2" = "ami-0c6a6b0e75b2b6ce7"
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
