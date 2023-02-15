# resource "aws_s3_bucket" "new-bucket" {
#     bucket = "class-bucket-02092023"
#     acl = "public-read"

#     website {
#         index_document = "index.html"
#         error_document = "error.html"
#     }
#     tags = {
#         Env = "Dev"
#     }
# policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#       {
#           "Sid": "PublicReadGetObject",
#           "Effect": "Allow",
#           "Principal": "*",
#           "Action": [
#               "s3:GetObject"
#           ],
#           "Resource": [
#               "arn:aws:s3:::class-bucket-02092023/*"
#           ]
#       }
#   ]
# }  
# EOF
# }

resource "aws_s3_bucket" "pr-request" {
    bucket = "aws-s3-1520022023"
    acl = "private"

    website {
        index_document = "index.html"
        error_document = "error.html"
    }
  tags = {
    env = "Dev"
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
              "arn:aws:s3:::aws-s3-1520022023/*"
          ]
      }
  ]
}  
EOF
}