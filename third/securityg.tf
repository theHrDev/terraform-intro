resource "aws_security_group" "web_sec_grp" {
  name = "Security group for terraform"
  ingress  {
    from_port = 80
    to_port  = 80
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "tcp"
  }
  ingress  {
    from_port = 22
    to_port  = 22
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "tcp"
  }
  egress  {
    from_port = 0
    to_port  = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "-1"
  }
}