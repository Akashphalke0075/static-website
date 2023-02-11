variable "new-user" {
    default = ["akash", "vikas", "ninad"]
}

resource "aws_iam_user" "instance-create" {
    count = length(var.new-user)
    name = var.new-user[count.index]
}