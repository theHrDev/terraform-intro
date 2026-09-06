output "public_ip" {
  value = module.web-server.public_ip
  description = "Public Ip of web server"
}