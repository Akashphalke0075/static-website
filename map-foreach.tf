resource "aws_s3_bucket" "class-bucket" {
    for_each = {
        dev = "pr-aws-bucket-14022023"
        test    = "pr-aws-bucket-14022023"
        prod = "pr-aws-bucket-140224023"
    }
   bucket = "${each.key}-${each.value}"
   acl = "private"

tags ={
    environment = each.key
    name = "${each.key}-${each.value}"
}
}