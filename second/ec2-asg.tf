resource "aws_instance" "instances" {
  for_each               = var.inst_conf
  instance_type          = each.value.type
  vpc_security_group_ids = [aws_security_group.frontend_sg.id]
  key_name = aws_key_pair.app_key_pair.key_name
  ami = each.value.ami
  tags = {
    Name= each.key
  }
}
