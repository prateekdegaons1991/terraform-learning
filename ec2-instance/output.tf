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

output "user_name_arn" {

  value = zipmap(aws_iam_user.dev_users.*.name, aws_iam_user.dev_users.*.arn)
}

output "ec2_public_ip" {
  value = zipmap(aws_instance.terraform-datasource-ec2.*.tags.Name, aws_instance.terraform-datasource-ec2.*.public_ip)

}
