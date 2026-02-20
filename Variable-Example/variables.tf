variable "ami_id"{
    type = string
    default="ami-0220d79f3f480ecf5"
}

variable "ins-type"{
    type = string
    default= "t3.micro"
}

variable "ec2_tags"{
    type= map
    default={
        name = "var-instance"
        project= "learning"
        env= "test"
    }
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

variable "sg_cidr_block"{
    type = list
    default =["0.0.0.0/0"]
}
 
 variable "sg_tags"{
    type= map
    default={
        name = "allowing all traffic"
        project= "learning"
        env= "test"
    }
}