output "public_addr"{
    aws_instance.learning.public_ip
}

output "private_addr"{
    aws_instance.learning.private_ip
}