resource "aws_instance" "remote_instance"{

    ami = var.ami
    instance_type = var.ins_type
    vpc_security_group_ids = [aws_security_group.remote_sg.id]
    tags = var.remote-tags
}

resource "aws_security_group" "remote_sg"{
    name = "remote_state_sg"
    dynamic ingress{
     for_each = var.rules
     content{
        from_port = ingress.value.from_port
        to_port= ingress.value.to_port
        protocol = ingress.value.protocol
        cidr_blocks = ingress.value.cidr_blocks
     }
    }
    egress{
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

}