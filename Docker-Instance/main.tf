resource "aws_instance" "docker_ins"{
    ami = var.ami_id
    instance_type = var.ins_type
  root_block_device {
    volume_size = 50
  }
  user_data= file("bootstrap.sh")
    tags ={
        Name = "Docker"
        project = "Docker host"
        terraform = "true"
    }
}