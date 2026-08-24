variable "ami_id" {
  type    = string
  default = "ami-0bdc7d025135d7b49"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}



variable "inst_name" {
  # default = {
  #   frontend : { security : aws_security_group.frontend_sg}
  #   backend : { security : aws_security_group.backend_sg}
  #   database :
  # }
  type    = list(string)
  default = ["frontend", "backend", "database"]

}

variable "inst_conf" {
  default = {
    mobile  = { ami = "ami-0bdc7d025135d7b49", type = "t3.micro" }
    desktop = { ami = "ami-0bdc7d025135d7b49", type = "t3.micro" }
    web     = { ami = "ami-0b6d9d3d33ba97d99", type = "t3.small" }
  }
}
