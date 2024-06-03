provider "aws" {
  region = "us-west-1"
}
resource "aws_iam_user" "ak" {
  name = "ankita"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "lb" {
  user = aws_iam_user.ak.name
}

data "aws_iam_policy_document" "ak_ro" {
  statement {
    effect    = "Allow"
    actions   = ["*"]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "ak_ro" {
  name   = "adfullaccess"
  user   = aws_iam_user.ak.name
  policy = data.aws_iam_policy_document.ak_ro.json
}



