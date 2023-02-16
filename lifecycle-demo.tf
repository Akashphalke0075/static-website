# resource "aws_instance" "class-ec2-instance" {
#     ami = "ami-0b5eea76982371e91"
#     instance_type = "t2.micro"
#     availability_zone = "us-east-1b"
#     tags = {
#         Name = "lifecycle-instance-new"
#     }

#     # lifecycle {
#     #     prevent_destroy = true
#     # }
# #   lifecycle {
# #     create_before_destroy = true
# #   }

# # lifecycle {
# #     ignore_changes = [
# #         tags
# #     ]
# # }

# # lifecycle {
# #     prevent_destroy = true
# # }
# }


resource "aws_instance" "class-ec2" {
    ami = "ami-0b5eea76982371e91"
    instance_type = "t2.micro"
    availability_zone = "us-east-1b"

    tags = {
        Name = "dev-dept"
    }
}