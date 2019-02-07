module "ec2" {
  source  = "app.terraform.io/atanasc/ec2/aws"
  version = "0.0.7"

  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  public_key = "${var.public_key}"

  subnet_id = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
}
