provider "aws" {}

resource "aws_vpc" "lab-vpc" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "Public-subnet" {
    vpc_id = aws_vpc.lab-vpc.id
    cidr_block = "10.0.0.0/24"
  

}

resource "aws_subnet" "private-subnet" {
    vpc_id = aws_vpc.lab-vpc.id
    cidr_block = "10.0.2.0/23"
  
}
