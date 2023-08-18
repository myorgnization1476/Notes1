resource "aws_instance" "demo_ec2" {
  ami                         = "ami-08e5424edfe926b43"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "test-key"
  count                       = 3
  tags = {
    Name = var.instance_name
  }
}