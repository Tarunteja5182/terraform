aws_instance "learning"{
    ami = var.ami_id
    instance_type = var.ins_type
    vpc_security_group_id= [var.sg_id]
    tags = var.ec2_tags
    
}