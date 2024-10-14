# lb_rule/variables.tf

# ARN do Listener onde a regra será aplicada
variable "listener_arn" {
  description = "ARN of the Load Balancer listener"
  default     = ""  # Substitua pelo ARN do seu listener
}

# Prioridade da regra (número único entre as regras do listener)
variable "priority" {
  description = "Priority of the load balancer rule"
  default     = 2  # Prioridade padrão
}

# ARN do Target Group para onde o tráfego será direcionado
variable "target_group_arn" {
  description = "ARN of the target group to forward traffic to"
}

# Padrões de caminho que ativam esta regra (exemplo: ["/", "/home"])
variable "path_patterns" {
  description = "List of path patterns to match"
  type        = list(string)
  default     = ["/teste*"]  # Padrão de caminho padrão
}
