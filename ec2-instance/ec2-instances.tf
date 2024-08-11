resource "aws_instance" "terraform-datasource-ec2" {
  // The AMI (Amazon Machine Image) used for the instances.
  ami = data.aws_ami.ubuntu.image_id

  // The instance type of the EC2 instance.
  instance_type = var.instance_type

  // Tags applied to the EC2 instance.
  tags = {
    Name         = "terraform-datasource-ec2-${count.index}"
    CreationDate = local.crrationDate
  }

  // The number of instances to create.
  count = var.env == "development" ? 2 : 3

  // The security groups associated with the EC2 instance.
  security_groups = var.security_groups

  lifecycle {
    # create_before_destroy = true
    ignore_changes = [tags]
    prevent_destroy = false
  }

}
