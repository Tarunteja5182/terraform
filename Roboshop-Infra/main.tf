resource "aws_instance" "roboshop_ec2"{
    
    ami = var.ami
    instance_type = var.ec2_type
    vpc_security_group_ids = [aws_security_group.roboshop_sg.id]
    count =10 
  
    tags = {
     Name = var.instances_robshop[count.index]
     project = "Roboshop"
     env = "Dev" 
    }
}


resource "aws_security_group" "roboshop_sg"{
    name = "allow all traffic for roboshops micro services"

    egress{
        from_port = var.sg_from_port
        to_port = var.sg_to_port
        protocol = var.sg_protocol
        cidr_blocks = var.sg_cidr
    }

    ingress{
        from_port= var.sg_from_port
        to_port= var.sg_to_port
        protocol= var.sg_protocol
        cidr_blocks= var.sg_cidr
    }

    tags ={
        name = "Roboshop allow ports"
    }
}