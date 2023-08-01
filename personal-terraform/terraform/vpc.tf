resource "aws_vpc" "myvpc" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "My-VPC"
  }
}