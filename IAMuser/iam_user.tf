resource "aws_iam_user" "rukayat" {
  name = "Rukayat"
}
resource "aws_iam_user" "hamzat" {
  name = "Hamzat"
}
resource "aws_iam_user" "abiodun" {
  name = "Abiodun"
}

resource "aws_iam_group" "developers" {
  name = "developers_gp"
}

resource "aws_iam_group_membership" "group_mem" {
  name = "developers_gm"
  users = [aws_iam_user.rukayat.name, aws_iam_user.hamzat.name, aws_iam_user.abiodun.name]
  group = aws_iam_group.developers.name
}