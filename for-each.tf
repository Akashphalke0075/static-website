variable "user-list" {
    default = ["akash", "shubham" "kunal", "varun"]
}

resource "aws_iam_user" "user-iam" {
    for_each = toset(var.user-list)
    name = each.key
}