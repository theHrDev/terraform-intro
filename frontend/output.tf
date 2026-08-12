output "frontend-public-ip" {
  value = aws_instance.frontend.public_ip
  description = "Public Ip for frontend app"
}
# {
#   "frontend-public-ip": {
#     "sensitive": false,
#     "type": "string",
#     "value": "52.91.222.86"
#   }
# }
