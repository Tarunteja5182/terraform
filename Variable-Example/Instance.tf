resource "aws_instance" "variables-ec2"{
    ami = var.ami_id
    instance_type= var.ins-type
    vpc_security_group_ids=[aws_security_group.variables-sg.id]

    tags= var.ec2_tags
}

resource "aws_security_group" "variables-sg"{
    name = "Learning_SG"

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

    tags= var.sg_tags
}