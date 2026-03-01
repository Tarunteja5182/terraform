output "public_addr"{
   value =  aws_instance.learning.public_ip
}

output "private_addr"{
   value = aws_instance.learning.private_ip
}