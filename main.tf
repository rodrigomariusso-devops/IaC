# main.tf

# Configuração do provedor AWS com a região especificada
provider "aws" {
  region = var.aws_region
}

# Módulo para criar o Target Group
module "target_group" {
  source            = "./target_group"            # Caminho para o módulo Target Group
  target_group_name = var.target_group_name       # Nome do Target Group
  vpc_id            = var.vpc_id                  # ID da VPC onde o Target Group será criado
  protocol          = var.protocol                 # Protocolo do Target Group
  port              = var.port                     # Porta do Target Group
}

# Módulo para criar a Regra do Load Balancer
module "lb_rule" {
  source            = "./lb_rule"                 # Caminho para o módulo Load Balancer Rule
  listener_arn      = var.listener_arn            # ARN do Listener do Load Balancer
  priority          = var.lb_rule_priority        # Prioridade da regra
  target_group_arn  = module.target_group.target_group_arn  # ARN do Target Group criado
  path_patterns     = var.lb_rule_path_patterns   # Padrões de caminho para a regra
}

# Módulo para criar o Serviço ECS
module "ecs_service" {
  source           = "./ecs_service"              # Caminho para o módulo ECS Service
  service_name     = var.service_name              # Nome do Serviço ECS
  cluster_name     = var.cluster_name              # Nome do Cluster ECS
  task_definition  = var.task_definition           # ARN da Task Definition
  target_group_arn = module.target_group.target_group_arn  # ARN do Target Group criado
  desired_count    = var.desired_count             # Número desejado de instâncias do serviço
}

# Output para exibir o nome do serviço ECS após a criação
output "ecs_service_name" {
  description = "Name of the ECS service"
  value       = module.ecs_service.service_name
}

# Output para exibir o ID da regra do Load Balancer
output "lb_rule_id" {  # Mantido como saída do lb_rule
  description = "ID of the Load Balancer listener rule"
  value       = module.lb_rule.lb_rule_id  # Referenciando a saída do módulo lb_rule
}
