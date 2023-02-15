# # variable "user-list" {
# #     default = ["akash", "shubham","kunal", "vipul", "vishal", "varun"]
# # }

# # resource "aws_iam_user" "user-iam" {
# #     for_each = toset(var.user-list)
# #     name = each.key
# # }


# variable "user-list" {
#     default = ["akash", "vinod",]

# }

# resource "aws_iam_user" "class-user" {
#     count = length(var.user-list)
#     name = var.user-list[count.index]
# }

variable "user-list" {
    default = ["akash", "vipyl", "ninad", "kartik", "varun"]
}

resource "aws_iam_user" "pr-user" {
    for_each = toset(var.user-list)
    name = each.key
}
