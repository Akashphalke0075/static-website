variable "user_names" {
default = ["vimal", "brian"]
}

resource "aws_iam_user" "quiz_experts_user" {
count = length(var.user_names)
name = var.user_names[count.index]
}