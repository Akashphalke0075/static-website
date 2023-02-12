variable "user-list" {
    default = ["akash", "shubham","kunal", "varun"]
}

resource "aws_iam_user" "user-iam" {
    count = length(var.user-list)
    name = var.user-list[count.index]
}