# ecs_service/variables.tf

# Nome do Serviço ECS
variable "service_name" {
  description = "Name of the ECS service"
  default     = ""  # Nome padrão do Serviço ECS
}

# Nome do Cluster ECS
variable "cluster_name" {
  description = "Name of the ECS cluster"
  default     = ""  # Nome padrão do Cluster ECS
}

# ARN da Task Definition do ECS
variable "task_definition" {
  description = "Task definition ARN"
  default     = ""  # ARN padrão da Task Definition
}

# Número desejado de instâncias do serviço ECS
variable "desired_count" {
  description = "Number of tasks to run"
  default     = 0  # Número padrão de instâncias
}

# ARN do Target Group para vincular ao serviço ECS
variable "target_group_arn" {
  description = "ARN of the target group"
}
