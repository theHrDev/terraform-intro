# resource "aws_instance" "instances" {
#   for_each = toset(var.inst_name)
#   ami                    = var.ami_id
#   instance_type          = var.instance_type

#   vpc_security_group_ids = [
#     each.value == "frontend" ?  aws_security_group.frontend_sg.id:
#     each.value == "backend" ? aws_security_group.backend_sg.id:
#     aws_security_group.database_sg.id

#   ]
#   key_name = aws_key_pair.app_key_pair.key_name
#   tags = {
#     Name = each.value
#   }
# }


# resource "aws_instance" "backend" {
#   ami                    = var.ami_id
#   instance_type          = var.instance_type
#   vpc_security_group_ids = [aws_security_group.backend_sg.id]
#   key_name = aws_key_pair.app_key_pair.id
#   tags = {
#     Name = "backend-ec2"
#   }
# }

# resource "aws_instance" "database" {
#   ami                    = var.ami_id
#   instance_type          = var.instance_type
#   vpc_security_group_ids = [aws_security_group.database_sg.id]
#   tags = {
#     Name = "database-ec2"
#   }
# }
