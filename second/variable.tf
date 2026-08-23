variable "ami_id" {
  type = string
  default = "ami-0bdc7d025135d7b49"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}



variable "inst_name" {
  # default = {
  #   frontend : { security : aws_security_group.frontend_sg}
  #   backend : { security : aws_security_group.backend_sg}
  #   database :
  # }
  type = list(string)
  default = ["frontend","backend","database"]

}