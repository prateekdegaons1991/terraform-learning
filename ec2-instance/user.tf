resource "aws_iam_user" "dev_users" {
  count = length(var.dev_users)
  name  = var.dev_users[count.index]


  tags = {
    Name         = "${var.dev_users[count.index]}-user"
    CreationDate = local.crrationDate
  }

  lifecycle {
    prevent_destroy = false
    ignore_changes = all
  }

}

