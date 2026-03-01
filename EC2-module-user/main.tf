module "ec2"{
    source = "../EC2-module"
    ami_id=var.ami_id
    instance_type= var.ins_type
    vpc_security_group_ids=[data.aws_security_group.sam.id]
    tags = merge(var.tags,
                {Name = "${var.project}-${var.env}"},
                var.common_tags
                )
}