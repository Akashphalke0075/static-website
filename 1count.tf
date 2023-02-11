# # variable "user-list" {
# #     default = ["Vikram","Akash","Sagar"]

# # }

# # resource "aws_iam_user" "new-user" {
# #     count = length(var.user-list)
# #     name = var.user-list[count.index]
# # }


# variable "create-user" {
#     default = ["prasad","ritesh","vikas"]
# }

# resource "aws_iam_user" "new-user-iam" {
#     count = length(var.create-user)
#     name = var.create-user[count.index]
# }


# variable "user-list" {
#     default = ["RAHUL","SANKET","SUDHIR"]
# }

# resource "aws_iam_user" "new-user-iam" {
#     for_each = toset
# }