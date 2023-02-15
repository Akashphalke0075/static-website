# variable "user-list" {
#     default = ["vipul","AKASH","VIAKS","VINOD","vikas"]
# }

# resource "aws_iam_user" "class-user" {
#     count = length(var.user-list)
#     name = var.user-list[count.index]
# }


variable "user-list" {
    default = ["akash", "rakshas", "vikas", "kartik" ,"vinod"]
}

resource "aws_iam_user" "pr-user" {
    count = length(var.user-list)
    name = var.user-list[count.index]
}