# variables.tf (Projeto Principal)

# Região da AWS onde os recursos serão criados
variable "aws_region" {
  description = "AWS region"
  default     = ""  # Região padrão
}

# ID da VPC onde o Target Group será criado
variable "vpc_id" {
  description = "VPC ID where the target group is created"
  default     = ""  # ID da VPC padrão (substitua conforme necessário)
}

# Nome do Target Group
variable "target_group_name" {
  description = "Name of the target group"
  default     = ""  # Nome padrão do Target Group
}

# Porta para o Target Group
variable "port" {
  description = "Port for the target group"
  default     = 80  # Porta padrão
}

# Protocolo para o Target Group (e.g., HTTP, HTTPS)
variable "protocol" {
  description = "Protocol for the target group"
  default     = ""  # Protocolo padrão
}

# Nome do Cluster ECS
variable "cluster_name" {
  description = "ECS Cluster name"
  default     = ""  # Nome padrão do Cluster ECS
}

# Nome do Serviço ECS
variable "service_name" {
  description = "ECS Service name"
  default     = ""  # Nome padrão do Serviço ECS
}

# ARN da Task Definition do ECS
variable "task_definition" {
  description = "Task definition ARN"
  default     = ""  # ARN padrão da Task Definition
}

# Número desejado de instâncias do serviço ECS
variable "desired_count" {
  description = "Desired count of ECS service"
  default     = 0  # Número padrão de instâncias
}

# ARN do Listener do Load Balancer
variable "listener_arn" {
  description = "ARN of the Load Balancer listener"
  default     = ""  # Substitua pelo ARN do seu listener
}

# Prioridade da Regra do Load Balancer
variable "lb_rule_priority" {
  description = "Priority of the load balancer rule"
  default     = 2  # Prioridade padrão
}

# Padrões de caminho para a Regra do Load Balancer
variable "lb_rule_path_patterns" {
  description = "List of path patterns to match for the load balancer rule"
  type        = list(string)
  default     = ["/teste*"]  # Padrões de caminho padrão
}
