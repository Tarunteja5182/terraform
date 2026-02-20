resource "aws_instance" "test_terraform"{
    ami = "ami-0220d79f3f480ecf5"
    instance_type= "t3.micro"
    tags = {
    Name = "terraform-ec2"
    Env = "sample"

  }
}