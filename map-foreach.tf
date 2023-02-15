# resource "aws_s3_bucket" "class-bucket" {
#     for_each = {
#         dev = "aws-bucket-14022023"
#         prod = "aws-bucket-14022023"
#         test = "aws-bucket-14022023"
#     }
#     bucket = "${each.key}-${each.value}"
#     acl = "private"
#     tags = {
#         enviornment = each.key
#         buckettnamee = "${each.key}-${each.value}"
#     }
# }

resource "aws_s3_bucket" "class-bucket" {
    for_each = {
        dev = "aws-bucket-2023"
        prod = "aws-bucket-2023"
        test = "aws-bucket-2023"
    }
    bucket = "${each.key}-${each.value}"
    acl = "private"

    tags = {
        env = "${each.key}-${each.value}"
    }
}