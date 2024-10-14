# lb_rule/main.tf

resource "aws_lb_listener_rule" "lb_rule" {
  listener_arn = var.listener_arn  # ARN do Listener
  priority     = var.priority        # Prioridade da regra

  action {
    type             = "forward"
    target_group_arn = var.target_group_arn  # ARN do Target Group para onde o tráfego será direcionado
  }

  # Condição correta para path pattern
  condition {
    path_pattern {
      values = var.path_patterns  # Padrões de caminho a serem correspondidos
    }
  }
}

# Saída do ID da regra
output "lb_rule_id" {  
  value = aws_lb_listener_rule.lb_rule.id
}
