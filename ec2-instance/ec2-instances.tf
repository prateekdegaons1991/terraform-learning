// Create a new EC2 Instance

resource "aws_instance" "terraform-datasource-ec2" {
  ami = data.aws_ami.ubuntu.image_id
  # ami = lookup(var.ami, "${var.env}", "ami-06afbb13d6297d18a")
  instance_type = var.instance_type

  tags = {
    Name         = "terraform-datasource-ec2-${count.index}"
    CreationDate = local.crrationDate
  }

  count = var.env == "development" ? 1 : 2

  security_groups = var.security_groups


}