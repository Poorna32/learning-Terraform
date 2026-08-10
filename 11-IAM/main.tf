resource "aws_instance" "test" {
  ami           = var.ami
  vpc_security_group_ids = var.security_group
  instance_type = var.instance_type
  iam_instance_profile = aws_iam_instance_profile.frontend.name

  tags = {
    Name = "frontend"
  }
}

resource "aws_iam_role" "frontend" {
  name = var.name


  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })


  tags = {
    tag-key = var.name
  }
}


resource "aws_iam_role_policy" "frontend" {
  name = var.name

  role = aws_iam_role.frontend.name

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Action   = var.policy_list.policylist
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}


resource "aws_iam_instance_profile" "frontend" {
  name = var.name
  role = aws_iam_role.frontend.name
}