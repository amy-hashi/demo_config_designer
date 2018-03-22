//--------------------------------------------------------------------
// Variables
variable "ec2_instance_demo_instance_type" {}
variable "ec2_instance_demo_name" {}

//--------------------------------------------------------------------
// Modules
module "ec2_instance_demo" {
  source  = "app.terraform.io/amy-demo/ec2-instance-demo/aws"
  version = "0.1"

  ami = "ami-66506c1c"
  instance_type = "${var.ec2_instance_demo_instance_type}"
  name = "${var.ec2_instance_demo_name}"
  subnet_id = "subnet-4270936d"
  vpc_security_group_ids = "sg-f7591781"
}
