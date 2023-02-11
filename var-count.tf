variable "user-list" {
    default = ["AKASH","VIAKS","VINOD"]
}

resource "aws_iam_user" "class-user" {
    count = length(var.user-list)
    name = var.user-list[count.index]
}