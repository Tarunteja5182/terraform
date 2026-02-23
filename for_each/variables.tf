variable "instance_names"{
    type = list
    default = ["monogodb","reddis","mysql"]
}

variable "common_tags"{
    type = map
    default = {
        project = "roboshop"
        evn = "test"
    }
}

variable "ami"{
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "ec2_type"{
    type = string
    default = "t3.micro"
}

variable "zone_id"{
    type = string
    default = "Z0994037IHVPKSSQRAUE"
}