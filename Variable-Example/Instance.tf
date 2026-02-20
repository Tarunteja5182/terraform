resource "aws_instance" "variables-ec2"{
    ami = var.ami
    instance_type= var.type-ins
    instance_security_group=[aws_security_group.variable.sg.id]

    tags{
       name= var.ec2_tags
    }
}

resource "aws_security_group" "variables-sg"{
    name = "allowing all traffic for this instance"

    egress{
        from_port= var.sg_from_port
        to_port= var.sg_to_port
        protocol= var.sg_protocol
        cidr_blocks= var.sg_cidr_block
    }
    ingress{
        from_port= var.sg_from_port
        to_port= var.sg_to_port
        protocol= var.sg_protocol
        cidr_blocks= var.sg_cidr_block
    }

    tags{
        name= var.sg_tags
    }
}