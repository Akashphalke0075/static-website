variable "user-list" {
    default = ["AKASH","VIAKS","VINOD"]
}

resource "aws_iam-user" "user-iam" {
count = length(var.user-list)
name = var.user-list[count.index]
}