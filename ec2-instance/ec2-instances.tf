// This Terraform resource block creates multiple EC2 instances.
// The instances are created based on the environment variable "env".
// If the environment variable is set to "development", 2 instances are created.
// If the environment variable is set to any other value, 3 instances are created.
// The AMI (Amazon Machine Image) used for the instances is the latest Ubuntu image.
// The instance type is set by the variable "instance_type".
// The instances are tagged with the name "terraform-datasource-ec2-{index}" and the creation date.
// The instances are associated with the security groups specified in the variable "security_groups".

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

}
