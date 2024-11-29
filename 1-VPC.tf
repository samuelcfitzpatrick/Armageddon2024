# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "tokyoapp1" {
  cidr_block = "10.70.0.0/16"

  tags = {
    Name = "tokyoapp1"
    Service = "application1"
    Owner = "resultspeak"
    Planet = "Mustafar"
  }
}
resource "aws_vpc" "londonapp1" {
  cidr_block = "10.71.0.0/16"

  tags = {
    Name = "londonapp1"
    Service = "application1"
    Owner = "resultspeak"
    Planet = "Mustafar"
  }
}
resource "aws_vpc" "newyorkapp1" {
  cidr_block = "10.72.0.0/16"

  tags = {
    Name = "newyorkapp1"
    Service = "application1"
    Owner = "resultspeak"
    Planet = "Mustafar"
  }
}
resource "aws_vpc" "saopauloapp1" {
  cidr_block = "10.73.0.0/16"
  tags = {
    Name = "saopauloapp1"
    Service = "VPC"
    Owner = "Nealy"
    Planet = "Laconia"
  }
}
resource "aws_vpc" "sydneyapp1" {
  cidr_block = "10.74.0.0/16"
  tags = {
    Name = "sydneyapp1"
    Service = "VPC"
    Owner = "Nealy"
    Planet = "Laconia"
  }
}
resource "aws_vpc" "Ncaliforniaapp1" {
  cidr_block = "10.75.0.0/16"
  tags = {
    Name = "californiaapp1"
    Service = "application1"
    Owner = "resultspeak"
    Planet = "Mustafar"
  }
}
resource "aws_vpc" "hongkongapp1" {
  cidr_block = "10.76.0.0/16"
  tags = {
    Name = "hongkongapp1"
    Service = "application1"
    Owner = "resultspeak"
    Planet = "Mustafar"
  }
}