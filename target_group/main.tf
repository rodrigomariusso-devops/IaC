# target_group/main.tf

# Recurso para criar o Target Group do Load Balancer
resource "aws_lb_target_group" "target_group" {
  name     = var.target_group_name  # Nome do Target Group
  port     = var.port               # Porta do Target Group
  protocol = var.protocol           # Protocolo do Target Group (e.g., HTTP, HTTPS)
  vpc_id   = var.vpc_id             # ID da VPC onde o Target Group será criado

  # Configuração de verificação de saúde (Health Check)
  health_check {
    path                = "/"       # Caminho para a verificação de saúde
    interval            = 30        # Intervalo entre verificações (segundos)
    timeout             = 5         # Tempo de timeout para a verificação (segundos)
    healthy_threshold   = 5         # Número de verificações bem-sucedidas para considerar saudável
    unhealthy_threshold = 2         # Número de falhas para considerar o alvo como não saudável
  }
}
