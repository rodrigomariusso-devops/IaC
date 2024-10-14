# target_group/outputs.tf

# Output para exibir o ARN do Target Group
output "target_group_arn" {
  description = "ARN of the target group"
  value       = aws_lb_target_group.target_group.arn
}
