variable "ami_id"{
    type = string
}

variable "instance_type"{
    type = string
}

variable "tags"{
    type = map
    default={}
}

variable "vpc_security_group_ids"{
    type= list
}

