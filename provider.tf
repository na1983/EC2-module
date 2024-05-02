terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
  access_key = "AKIA5FTY7NOKJZVDZPDX"
  secret_key = "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"
}
