# target_group/variables.tf

# Nome do Target Group
variable "target_group_name" {
  description = "Name of the target group"
  default     = ""  # Nome padrão do Target Group
}

# ID da VPC onde o Target Group será criado
variable "vpc_id" {
  description = "VPC ID where the target group is created"
  default     = ""  # ID da VPC padrão
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
