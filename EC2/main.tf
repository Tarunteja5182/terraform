resource "aws_instance" "test_terraform"{
    ami = "ami-0220d79f3f480ecf51"
    instance_type= "t3.micro"
}