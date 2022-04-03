resource "aws_instance" "dev_instance" {
  ami = var.AMIS[var.REGION]
  availability_zone = var.ZONE1
  instance_type = "t2.micro"
  key_name = "ansible-ec2-ohio"
  vpc_security_group_ids = ["sg-05ed6f021b22c2359"]
  tags = {
           Name = "tarra_instance"
           }

}


