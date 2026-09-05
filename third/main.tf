resource "aws_instance" "app_instance" {
  ami                    = "ami-0b79f6b294a030f24"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.web_sec_grp.id]
  key_name               = aws_key_pair.web_key_pair.key_name
  tags = {
    Name = "web instance"
  }
  user_data = <<-EOF
  #!/bin/bash

  sudo dnf install -y httpd

  systemctl enable httpd
  systemctl start httpd

  echo "Welcome to my website" > /var/www/html/index.html
EOF


}
