# resource "aws_instance" "class-ec2" {
#     ami = "ami-0b5eea76982371e91"
#     instance_type = "t2.micro"
#     count = 3

#     tags = {
#         Name = "new-ec2-${count.index}"
#     }
# }

resource "aws_instance" "new-intance" {
    ami = "ami-0b5eea76982371e91"
    instance_type = "t2.micro"
    count = 3

    tags = {
        Name = "new-instance-${count.inddex}"
    }
}