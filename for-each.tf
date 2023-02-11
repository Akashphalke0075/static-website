variable "new-user" {
    default = ["akash", "vikas", "ninad"]
}

resource "aws_iam_user" "instance-create" {
    instance_type = "t2.micro"
    ami = "ami-0b5eea76982371e91"
    count = length(var.new-user)
    name = var.new-user[count.index]
}