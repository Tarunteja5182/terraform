resource "aws_instance" "remote_prov"{
    ami = var.ami_id
    instance_type= local.ins_type
    vpc_security_group_ids=[aws_security_group.remote_sg.id]
    tags = merge(var.ins_tags,local.common_tags)

    connection{
       type     = "ssh"
       user     = local.rm_user
       password = local.rm_pwd
       host     = self.public_ip
    }

    provisioner "remote-exec"{
        inline = [
            "sudo dnf install nginx -y",
            "sudo systemctl start nginx"
        ]
    }

    provisioner "local-exec"{
        command = "echo This is the public-ip of the nginx instance ${self.public_ip}"
    }
}

resource "aws_security_group" "remote_sg"{
    name = "remote provisioners security groups"
    dynamic ingress{
        for_each=var.rules
        content{
            from_port = ingress.value.port
            to_port = ingress.value.port
            protocol = ingress.value.protocol
            cidr_blocks = ingress.value.cidr_blocks
            description = ingress.value.description
        }
    }
  
      egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "outbound rules of remote prov"
      }
}