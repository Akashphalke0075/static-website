variable “user_names” {
default = [“Peter”, “Chris”, “Stewie”]
}

resource “aws_iam_user” “quiz_experts_user” {
count = length(var.user_names)
name = var.user_names[count.index]
}