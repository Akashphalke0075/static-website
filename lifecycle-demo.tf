resource "aws_instance" "class-ec2-instance" {
    ami = "ami-0b5eea76982371e91"
    instance_type = "t2.micro"

    tags = {
        Name = "us-east-demo"
    }

}