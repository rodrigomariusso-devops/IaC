variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "family" {
  description = "The family of your ECS task"
  default     = "teste-tf"
}

variable "cpu" {
  description = "The number of CPU units used by the task"
  default     = "1024"
}

variable "memory" {
  description = "The amount of memory (in MiB) used by the task"
  default     = "1024"
}

variable "network_mode" {
  description = "The Docker networking mode to use for the containers in the task"
  default     = "default"
}

variable "requires_compatibilities" {
  description = "The launch type required by the task"
  type        = list(string)
  default     = ["EC2"]
}

variable "execution_role_arn" {
  description = "The ARN of the task execution role"
  default     = "arn:aws:iam::598723879413:role/ecsTaskExecutionRole"
}

variable "task_role_arn" {
  description = "The ARN of the IAM role that the task can assume"
  default     = "arn:aws:iam::598723879413:role/ecsTaskExecutionRole"
}

variable "container_name" {
  description = "The name of the container"
  default     = "teste-tf"
}

variable "container_image" {
  description = "The Docker image to use for the container"
  default     = "teste:latest"
}

variable "container_port" {
  description = "The port number on the container"
  default     = 80
}

variable "host_port" {
  description = "The port number on the host"
  default     = 0
}

variable "environment_variables" {
  description = "Lista de variáveis de ambiente para o container"
  type = list(object({
    name  = string
    value = string
  }))
  default = []
}
