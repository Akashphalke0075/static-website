variable "user-list" {
    default = ["Vikram","Akash","Sagar"]

}

resource "aws_iam_user" "new-user" {
    count = length(var.user-list)
    name = var.user-list[count.index]
}