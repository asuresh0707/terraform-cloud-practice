## outputs of ec2 instance
output "public_ip" {
  description = "the public ip of ec2 instance"
  value       = aws_instance.web-instance.*.public_ip
}

output "public_dns" {
  description = "the public dns of ec2 instance"
  value       = aws_instance.web-instance.*.public_dns
}