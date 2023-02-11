variable "user-list" {
    default = ["akash","manav","kunal","vikram",]
}

resource "aws_iam_user" "name-update" {
    for_each = toset(var.user-list)
    name = each.key
}