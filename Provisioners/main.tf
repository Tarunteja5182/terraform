resource "aws_instance" "prov_ins"{
    ami = var.ami_id
    instance_type = local.ins_type
    vpc_security_group_ids = [aws_security_group.prov_sg.id]
    tags = merge(var.common_tags, local.immutable_tags)
    provisioner "local-exec" {
    command = "echo The server's IP address is ${self.private_ip}"
  }
   provisioner "local-exec"{
    command = "echo This is 2nd local-provisioner in this block"
    on_failure = continue
   }
   provisioner "local-exec"{
    command = "echo This is the server's public ip ${self.public_ip}"
   }
}



resource "aws_security_group" "prov_sg"{
    name = "provisioners security group"
    dynamic ingress{
        for_each = var.dyn_ip
        content{
            from_port = ingress.value.port
            to_port = ingress.value.port
            protocol = ingress.value.protocol
            description = ingress.value.description
        }
    }
    egress{
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        description = "outbound rules"
    }

    tags = var.common_tags
}