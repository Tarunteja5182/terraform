resource "aws_instance" "spaces"{
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    tags ={
        Name = "${terraform.workspace}-nginx"
        terraform = "true"
        env = "${terraform.workspace}"
        project = "learning"
    }
}