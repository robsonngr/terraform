#terraform {
#  backend "local" {
#      path = "terraform.tfstate"
#  }
#}

terraform {
  backend "s3" {
    region = "us-east-1" # TODO substitua o valor da variavel, pela região onde você criou o bucket
    bucket = "tis-automation-bucket"       # TODO substitua pelo nome que você deu ao bucket
    key    = "tfstate"
  }
}
