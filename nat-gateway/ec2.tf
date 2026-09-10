resource "aws_instance" "frontend" {
  ami = var.ami
  instance_type =  var.instance_type
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [ aws_security_group.frontend.id ]
  associate_public_ip_address = true
  tags = {
    Name = "frontend"
  }

}
resource "aws_instance" "backend" {
  ami = var.ami
  instance_type =  var.instance_type
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [ aws_security_group.backend.id ]
  associate_public_ip_address = true
  tags = {
    Name = "backend"
  }

}
resource "aws_instance" "database" {
  ami = var.ami
  instance_type =  var.instance_type
  subnet_id = aws_subnet.private.id
  vpc_security_group_ids = [ aws_security_group.database.id ]
  associate_public_ip_address = false
  tags = {
    Name = "database"
  }

}