region                = "us-east-1"
family                = "teste-tf"
cpu                   = "1024"
memory                = "1024"
network_mode          = "default"
requires_compatibilities = ["EC2"]
execution_role_arn    = "arn:aws:iam::598723879413:role/ecsTaskExecutionRole"
task_role_arn         = "arn:aws:iam::598723879413:role/ecsTaskExecutionRole"
container_name        = "teste-tf"
container_image       = "teste:latest"
container_port        = 80
host_port             = 0

environment_variables = [
  {
    name  = "ENV_VAR_1"
    value = "value1"
  },
  {
    name  = "ENV_VAR_2"
    value = "value2"
  }
]
