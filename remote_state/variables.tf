variable "ami"{
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "ins_type"{
    type = string
    default = "t3.micro"
}

variable "rules"{
default =[
    {
        from_port = 22
        to_port = 22
        cidr_blocks=["0.0.0.0/0"]
        protocol ="tcp"
    },
    {
        from_port = 80
        to_port = 80
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
    }

]

}

variable "remote-tags"{
    type = map
    default = {
        Name= "remote-state-instance"
        project = "roboshop"
        env = "learning"
    }
}