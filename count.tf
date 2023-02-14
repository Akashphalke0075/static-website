# variable "user-list" {
#     default = ["akash","vikas","ninad"]
# }

# resource "aws_iam_user" "pr-create-usr" {
#     count = length(var.user-list)
#     name = var.user-list[count.index]
# }




variable "user-list" {
    default = ["akash", "vikas", "manoj"]
}

resource "aws_iam_user" "pr-user" {
    count = length(var.user-list)
    name = var.userlist[count.index]
}