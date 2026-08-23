output "instance-public-ip" {
  description = "Public ip for instance"
  value       = {for name, instance in aws_instance.instances:
  name => instance.public_ip
  }
}

# output "frontend-public-ip" {
#   value = aws_instance.frontend.public_ip
#   description = "Public Ip address for frontend"
# }

# output "backend-public-ip" {
#   value = aws_instance.backend.public_ip
#   description = "Backend public ip"
# }

# output "backend-private-ip" {
#   value = aws_instance.backend.private_ip
#   description = "Backend private ip"
# }
# output "database-public-ip" {
#   value = aws_instance.database.public_ip
#   description = "Database public ip"
# }
