## aws security groups
resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "secuirty group that allows ssh inbound traffic"
  ingress {
    description = "allow port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "allow all ip and ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_security_group" "web-ssh" {
  name        = "web-ssh"
  description = "secuirty group that allows ssh inbound traffic on port 22"
  ingress {
    description = "allow port 22"
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "allow all ip and ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}