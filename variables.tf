variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "tipo-de-instancia" # Escolha a maquina com os recursos necessário
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0a0e5d9c7acc336f1"  # Exemplo de AMI do Ubuntu, ajuste conforme necessário
}

variable "key_name" {
  description = "EC2 Key pair name"
  default     = "key.pem"  # Substitua pelo nome do seu par de chaves
}

variable "subnet_id" {
  description = "Subnet ID"
  default     = "subnet-xxxxx"  # Substitua pelo ID da sua sub-rede
}

variable "security_group_ids" {
  description = "Security Group IDs"
  type        = list(string)
  default     = ["sg-xxxxxx"]  # Substitua pelos seus Security Group IDs
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  default     = 1  # Define o número padrão de instâncias como 1
}