variable "ami"{
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type"{
    type = string
    default = "t3.micro"
}

variable "dsg"{
    default = [
        {
        from_port = "0"
        to_port = "22"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "accepting port 22 from internet"
        },
        {
            from_port = "0"
            to_port = "443"
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "accepting port 443 from internet"
        },
        {
            from_port = "0"
            to_port = "3306"
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "port for mysql"
        }
    ]
}

   variable "ec2_tags"{
    type = map
    default={
    Name = "mysql"
    project = "roboshop"
    env = "test"
   } 
}