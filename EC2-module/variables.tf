variable "ami_id"{
    type = string
}

variable "ins_type"{
    type = string
}

variable "ec2_tags"{
    type = map
    default={}
}

variable "sg_id"{
    type= list
}

