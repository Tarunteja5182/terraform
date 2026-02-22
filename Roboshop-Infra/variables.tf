variable "ami"{
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "ec2_type"{
    type = string
    default = "t3.micro"
}

variable "instances_robshop"{
    type = list
    default =["mongodb","redis","catalogue","mysql","payment","shipping","cart","rabbitmq","user","frontend"]
}

variable "sg_from_port"{
    type = number
    default = 0
}

variable "sg_to_port"{
    type = number
    default = 0
}

variable "sg_protocol"{
    type = string
    default = "-1"
}

variable "sg_cidr"{
    type = list
    default = ["0.0.0.0/0"]
}

variable "domain_name"{
    type = string
    default= "mbops.online"
}

variable "zone_id"{
    type = string
    default = "Z0994037IHVPKSSQRAUE"
}