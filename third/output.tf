output "app_public_ip" {
  description = "public ip for instance"
  value = aws_instance.app_instance.public_ip
}