resource "aws_instance" "frontend" {
  ami = "ami-0bdc7d025135d7b49"
  instance_type = "t3.micro"
  tags = {
    Name = "frontend-app"
  }
}