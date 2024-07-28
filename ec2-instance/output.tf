output "public_ip" {
  value = aws_instance.terraform-datasource-ec2.*.public_ip

}

output "environment" {
  value = var.env

}

output "region" {
  value = var.region

}

output "ami_name" {
  value = aws_instance.terraform-datasource-ec2.*.ami
}