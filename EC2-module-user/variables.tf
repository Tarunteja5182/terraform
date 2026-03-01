variable "ami_id"{
    type= string
    default = "ami-0220d79f3f480ecf5"
}

variable "ins_type"{
    type= string
    default = "t3.micro"
}

variable "project"{
    type= string
    default = "Roboshop"
}

variable "env"{
    trype= string
    default = "dev"
}

variable "common_tags"{
    type = map
    default = {
        project = "roboshop"
        terraform = "true"
    }
}