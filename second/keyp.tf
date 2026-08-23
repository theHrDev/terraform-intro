resource "aws_key_pair" "app_key_pair" {
  key_name  = "terraform_kp"
  public_key = file("~/.ssh/id_ed25519.pub")
}