resource "aws_instance" "this" {
  ami = var.ami
  instance_type = var.instance-type
  tags = {
    Name = var.name
  }
  
}