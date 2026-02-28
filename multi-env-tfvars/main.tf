resource "aws_instance" "mult-env"{
    ami= var.ami_id
    instance_type = var.ins_type
    tags = var.ins_tags
}