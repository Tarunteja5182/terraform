data "aws_security_group" "sam"{
    filter {
        name = "Security group name"
        value = "data_sg"
    }
    filter{
        name = "owner"
        value = "003252302882"
    }
}