module "web-server" {
  source = "./module/ec2"
  ami = "ami-0b79f6b294a030f24"
  instance-type = "t3.micro"
  name = "web-server"
}
# module "mobile" {
#   source = "./module/ec2"
#   ami = "ami-0b79f6b294a030f24"
#   instance-type = "t3.micro"
#   name = "mobile"
# }