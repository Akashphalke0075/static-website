resource "aws_instance" "class-ec2-instance" {
    ami = "ami-0b5eea76982371e91"
    instance_type = "t2.micro"

    tags = {
        Name = "us-east-demo"
    }
}

resource "aws_instance" "class-ec2-instance2" {
    ami = "ami-0fe0b2cf0e1f25c8a"
    instance_type = "t2.micro"
   provider = aws.aws-eu-region
    tags = {
        Name = "eu-west-demo"
    }
}
