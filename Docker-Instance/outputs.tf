output "public_ip"{
    value = aws_instance.docker_ins.public_ip
}