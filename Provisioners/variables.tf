variable "ami_id"{
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "common_tags"{
    type = map
    default={
        terraform = "true"
    }
}

variable "dyn_ip"{
    default = [
        {
            port = 22
            protocol = "tcp"
            description = "this a ssh protocol"
        },
        {
            port = 80
            protocol = "http"
            description = "this is a web protocol"
        }
    ]
}