terraform {
  required_version = ">= 1.0.0"

required_providers {
  aws={
    source = "hashicorp/aws"
    version = "3.73.0"
  }
}

//Colar aqui a configuração do backend da documentação
backend "s3" {
  bucket = "bucket-treino-udemy-wladimir"
  key = "aws-vpc/terraform.tfstate"
  region = "us-east-1"
}

}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner = "wladimirsouza"
      managed-by = "terraform"
    }
  }
}