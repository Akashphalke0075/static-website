# variable "user-list" {
#     default = ["akash","vikas","ninad"]
# }

# resource "aws_iam_user" "pr-create-usr" {
#     count = length(var.user-list)
#     name = var.user-list[count.index]
# }