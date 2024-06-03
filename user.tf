provider "aws" {
  region = "us-east-1"
}
resource "aws_iam_user" "hm" {
  name = "hema"
  path = "/system/"
  tags = {
    tag-key = "tag-value"
  }
}
resource "aws_iam_access_key" "hm" {
  user = aws_iam_user.hm.name
}
data "aws_iam_policy_document" "hm_ro" {
  statement  {
        effect = "Allow"
        actions = ["*"]
        resources = ["*"]
        }
}
resource "aws_iam_user_policy" "hm_ro" {
  name   = "administratorfullaccess"
  user   = aws_iam_user.hm.name
  policy = data.aws_iam_policy_document.hm_ro.json
}
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}
resource "aws_iam_user_login_profile" "hm" {
  user    = aws_iam_user.hema
  pgp_key = "keybase:some_person_that_exists"
}

output "password" {
  value = aws_iam_user_login_profile.hema.encrypted_password
}


       
     

 



