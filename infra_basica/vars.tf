variable "regiao" {
  default = "us-east-1"
}

variable "amis" {
  type = map(any)

  default = {
    "us-east-1" = "ami-0e472ba40eb589f49"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "chave_privada_gitlab"
}