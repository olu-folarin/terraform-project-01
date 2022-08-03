resource "aws_iam_user" "iam_users" {
  for_each = var.team
  name     = each.key
  #   the values will have the tag "dept"
  tags = {
    dept: each.value
  }
}