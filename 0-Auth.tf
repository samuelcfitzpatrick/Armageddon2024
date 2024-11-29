provider "aws" {
  alias = "tokyo"
  region = "ap-northeast-1"
}

provider "aws" {
  alias = "london"
  region = "eu-west-2"
}

provider "aws" {
  alias = "newyork"
  region = "us-east-1"
}

provider "aws" {
  alias = "ncalifornia"
  region = "us-west-1"
}

provider "aws" {
  alias = "saopaulo"
  region = "sa-east-1"
}

provider "aws" {
  alias = "sydney"
  region = "ap-southeast-2"
}

provider "aws" {
  alias = "hongkong"
  region = "ap-east-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
