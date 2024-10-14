Aqui está um README detalhado para o projeto Terraform que cria uma instância EC2 na AWS:

---

# Terraform para Criação de Instância EC2

Este repositório contém uma configuração do Terraform para criar uma instância EC2 na AWS. O projeto define uma instância com parâmetros específicos, como tipo, AMI, chave de acesso, subnet e grupos de segurança.

## Requisitos

- **AWS CLI**: Configurada com as credenciais apropriadas.
- **Terraform**: Instalado (versão recomendada: 1.0 ou superior).

## Estrutura do Projeto

- `main.tf`: Define a configuração para criar a instância EC2.
- `variables.tf`: Define as variáveis utilizadas no Terraform.
- `outputs.tf`: Define as saídas para obter informações sobre a instância EC2.

## Arquivos do Projeto

### `main.tf`

Este arquivo contém a configuração para criar uma instância EC2:

```hcl
provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "Exemplo-Terraform-EC2"
  }
}
```

### `variables.tf`

Define as variáveis que você precisa configurar:

```hcl
variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "tipo-de-instancia" # Escolha a máquina com os recursos necessários
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
```

### `outputs.tf`

Define as saídas para obter informações sobre a instância EC2 criada:

```hcl
output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.example.public_ip
}

output "private_ip" {
  description = "The private IP of the EC2 instance"
  value       = aws_instance.example.private_ip
}
```

## Passos para Executar

1. **Clone o Repositório**

   Clone este repositório para sua máquina local:

   ```sh
   git clone <URL_DO_REPOSITORIO>
   cd <NOME_DO_REPOSITORIO>
   ```

2. **Inicialize o Terraform**

   Execute o comando a seguir para inicializar o Terraform e baixar os provedores necessários:

   ```sh
   terraform init
   ```

3. **Planeje as Alterações**

   Revise o plano de execução do Terraform para verificar quais alterações serão aplicadas:

   ```sh
   terraform plan
   ```

4. **Aplique as Mudanças**

   Aplique as mudanças para criar a instância EC2:

   ```sh
   terraform apply
   ```

   Confirme a aplicação quando solicitado.

5. **Verifique as Saídas**

   Após a aplicação, você pode verificar o IP público e privado da instância EC2 usando os outputs definidos:

   ```sh
   terraform output
   ```

## Considerações

- **AMI e Chave de Acesso**: Certifique-se de substituir a AMI e o nome do par de chaves pelos valores apropriados para sua configuração.
- **Subnet e Grupos de Segurança**: Verifique se os IDs da subnet e dos grupos de segurança estão corretos e são apropriados para o seu ambiente.
