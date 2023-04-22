## aws ec2-instance resource 
resource "aws_instance" "web-instance" {
  ami                    = data.aws_ami.amzlinux.image_id
  instance_type          = var.aws_instance
  count                  = 1
  key_name               = "terraform-key"
  user_data              = file("apache-install.sh")
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.web-ssh.id]
  tags = {
    "Name" = "terraform-cloud-${count.index}"
  }

}