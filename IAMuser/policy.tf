resource "aws_iam_policy" "s3_bucket" {
  name = "ReadS3Bucket"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
        {
            Effect : "Allow"
            Action: [
                "s3:GetObject",
                "s3:PutObject",
                # "s3:ListBucket"
                # "s3:DeleteObject"

            ]
            Resource: "${aws_s3_bucket.main-s3.arn}/*"
        },
        {
            Effect : "Allow"
            Action: [
                "s3:ListBucket",

            ]
            Resource: aws_s3_bucket.main-s3.arn
        }
  ]
  })
}

resource "aws_iam_policy_attachment" "dev_policies" {
  name = "dev_policies"
  groups = [aws_iam_group.developers.name]
  policy_arn = aws_iam_policy.s3_bucket.arn
}