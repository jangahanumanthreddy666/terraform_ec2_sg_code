resource "aws_instance" "apache" {
  ami           = "ami-052cef05d01020f1d"
  instance_type = "t2.micro"
  key_name = "ap"
  count=2
  vpc_security_group_ids = [aws_security_group.apache3.id]
  user_data = <<EOF
             #!/bin/bash
             yum update -y
             yum install httpd -y 
             systemctl enable httpd
             systemctl start httpd
             echo "this is valiball" >/var/www/html/valiball/index.html/
       EOF

  tags = {
    Name = "hanumanth"
  }
}