variable "ami_id"{
    type = string
    default = "ami-0220d79f3f480ecf5"
}


variable "ins_tags"{
   type = map
   default = {
      Name = "remote_prov"
   } 
   
}

variable "rules"{
    default = [
        {
            port="80"
            protocol = "tcp"
            cidr_blocks=["0.0.0.0/0"]
            description = "allowing internet"
        },
        {
            port= "22"
            protocol = "tcp"
            cidr_blocks=["0.0.0.0/0"]
            description = "allowing ssh"
        }
    ]
}