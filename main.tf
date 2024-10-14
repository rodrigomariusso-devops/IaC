provider "aws" {
  region = var.region
}

resource "aws_ecs_task_definition" "app_task" {
  family                   = var.family
  cpu                      = var.cpu
  memory                   = var.memory
  network_mode             = var.network_mode
  requires_compatibilities = var.requires_compatibilities
  execution_role_arn       = var.execution_role_arn
  task_role_arn            = var.task_role_arn

  container_definitions = jsonencode([
    {
      name      = var.container_name
      image     = var.container_image
      essential = true

      portMappings = [
        {
          containerPort = var.container_port
          hostPort      = var.host_port
        }
      ]

      environment = [
        for env_var in var.environment_variables : {
          name  = env_var.name
          value = env_var.value
        }
      ] 
    }
  ])
}
