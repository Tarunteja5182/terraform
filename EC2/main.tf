resource "aws_instance" "test_terraform"{
    ami = "ami-0220d79f3f480ecf5"
    instance_type= "t3.micro"
    vpc_security_group_ids = [aws_security_group.test_sg.id]
    tags = {
    Name = "terraform-ec2"
    Env = "sample"

  }
}

resource "aws_security_group" "test_sg" {
  name        = "allow-all-terraform" # this is for AWS account
  description = "Allow TLS inbound traffic and all outbound traffic"
 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    name = "allow_all_traffic"
  }
}