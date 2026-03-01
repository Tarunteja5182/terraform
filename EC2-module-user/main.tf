module "ec2"{
    source = "../EC2-module"
    ami=var.ami_id
    instance_type= var.ins_type
    vpc_security_group_id=[data.aws_security_group.sam.id]
    tags= merge(var.common_tags,{Name = "${var.project}-${var.env}"})
}