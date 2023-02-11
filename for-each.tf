variable "new-user" {
    default = ["akash", "vikas", "ninad"]
}

resource "aws_iam_user" "instance-create" {
   for_each = toset(var.new-user)
   name = each.key 
}