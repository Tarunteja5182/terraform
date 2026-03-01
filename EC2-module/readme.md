This module creates EC2 instance in AWS.

Inputs :

* ami : (Mandatory) user needs to pass this
* instance_type : (Mandatory) user needs to pass this.
* vpc_security_group_id : (Mandatory) user needs to pass this.
* ec2_tags : (Optional) user may or may not need to pass this.

Outputs:

* Public_addr : Public ip of the created Ec2.
* private_addr: private ip of the create Ec2.