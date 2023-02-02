resource "aws_s3_bucket" "class-web-static-bucket" {
  bucket = "class-web-bucket-02022023"
  acl    = "public-read"
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
  tags = {
    Env = "test"
  }
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
      {
          "Sid": "PublicReadGetObject",
          "Effect": "Allow",
          "Principal": "*",
          "Action": [
              "s3:GetObject"
          ],
          "Resource": [
              "arn:aws:s3:::class-web-bucket-02022023/*"
          ]
      }
  ]
}  
EOF
}