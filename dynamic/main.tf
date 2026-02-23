resource "aws_instance" "dyn_instance"{
    ami= var.ami
    instance_type= var.instance_type
    vpc_security_group_ids= []
    tags = var.ec2_tags

}

resource "aws_security_group" "dyn_sg"{
    name = "DynamicSG"
    dynamic ingress{
        for_each = var.dsg
        content {
        from_port = ingress.value.from_port
        to_port = ingress.value.to_port
        protocol = ingress.value.protocol
        cidr_blocks = ingress.value.cidr_blocks
        description = ingress.value.description
        }
    }
            egress{
            from_port = "0"
            to_port= "0"
            protocol = "-1"
            cidr_blocks=["0.0.0.0/0"]
            description = "allowing outgoing traffic"
        }
}