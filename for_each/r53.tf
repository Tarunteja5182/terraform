resource "aws_route53_record" "www" {
  # count =10
  for_each = toset(var.instance_names)
  zone_id = var.zone_id
  # name    = "${var.instances_robshop[count.index]}.${var.domain_name}"
  name = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  # records = [aws_instance.roboshop_ec2[count.index].tags.Name == "frontend" ? 
  # aws_instance.roboshop_ec2[count.index].public_ip:aws_instance.roboshop_ec2[count.index].private_ip]

  records = [aws_instance.each_instance[each.key].private_ip]
              
  }

