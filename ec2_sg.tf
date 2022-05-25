resource "aws_security_group" "apache3" {
  name        = "apache3"
  description = "this is using for securitygroup"
  vpc_id      = "vpc-0f8ce01decc85c1e1"

  ingress {
    description      = "this is inbound rule"
    from_port        = 22
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["103.110.170.86/32"]
  }
  ingress {
    description      = "this is inbound rule"
    from_port        = 80
    to_port          = 80
    protocol         = "all"
    cidr_blocks      = ["103.110.170.86/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "hanumanth"
  }
}