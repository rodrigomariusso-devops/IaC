output "public_ips" {
  description = "The public IPs of the EC2 instances"
  value       = [for instance in aws_instance.example : instance.public_ip]
}

output "private_ips" {
  description = "The private IPs of the EC2 instances"
  value       = [for instance in aws_instance.example : instance.private_ip]
}
