resource "aws_instance" "each_instance"{
      
      ami = var.ami
      instance_type = var.ec2_type
      vpc_security_group_ids = [aws_security_group.each_sg.id]

      tags = {
        Name = for_each(var.instance_names)
        project = "roboshop"
        evn = "test"
      }
}

resource "aws_security_group" "each_sg"{
    name = "each_sg"
    ingress {
         from_port = "0"
         to_port = "0"
         protocol = "-1"
         cidr_block = ["0.0.0.0/0"]
         description = "each ingress"
    }
    egress{
        from_port = "0"
         to_port = "0"
         protocol = "-1"
         cidr_block = ["0.0.0.0/0"]
         description = "each egress"
    }
}