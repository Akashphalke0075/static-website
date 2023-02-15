# # resource "aws_s3_bucket" "class-s3-bucket" {
# #     bucket = "class-bucket-922023"
# #     acl = "public-read"

#     website {
#         index_document = "index.html"
#         error_document = "error.html"
#     }
#     tags = {
#         Env = "DEV"
#     }
#     policy = <<EOF
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
#               "arn:aws:s3:::class-bucket-922023/*"
#           ]
#       }
#   ]
# }  
# EOF
# }


# resource "aws_s3_bucket" "pr-request" {
#     bucket = "aws-s3-15022023"
#     acl = "private"

#     website =
# }

