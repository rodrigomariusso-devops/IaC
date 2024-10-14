Aqui está um exemplo de README para o seu projeto Terraform, explicando como configurar e executar o Terraform para criar uma definição de tarefa ECS com os recursos fornecidos:

---

# Terraform ECS Task Definition

Este repositório contém a configuração Terraform para criar uma definição de tarefa no Amazon ECS (Elastic Container Service). A definição de tarefa especifica os recursos necessários para rodar containers no ECS.

## Requisitos

Antes de começar, você precisa ter:

- Uma conta AWS com permissões adequadas para criar e gerenciar recursos ECS e IAM.
- Terraform instalado em sua máquina local.
- Configuração do AWS CLI com suas credenciais.

## Estrutura do Projeto

O projeto é composto pelos seguintes arquivos:

- `main.tf`: Contém a definição principal dos recursos Terraform, incluindo a definição da tarefa ECS.
- `variables.tf`: Define as variáveis utilizadas na configuração Terraform.
- `terraform.tfvars`: Contém os valores das variáveis que podem ser modificados conforme necessário.

## Variáveis

As variáveis são definidas em `variables.tf` e os valores são configurados em `terraform.tfvars`. Aqui está uma descrição das variáveis principais:

- `region`: Região da AWS onde os recursos serão criados.
- `family`: Família da tarefa ECS.
- `cpu`: Número de unidades de CPU para a tarefa (por exemplo, 1024 unidades para 1 vCPU).
- `memory`: Quantidade de memória em MiB para a tarefa (por exemplo, 1024 MiB para 1 GiB).
- `network_mode`: Modo de rede Docker a ser usado para os containers (por exemplo, `default` ou `awsvpc`).
- `requires_compatibilities`: Tipo de compatibilidade da tarefa (por exemplo, `EC2` ou `FARGATE`).
- `execution_role_arn`: ARN do papel de execução da tarefa.
- `task_role_arn`: ARN do papel da tarefa.
- `container_name`: Nome do container.
- `container_image`: Imagem Docker a ser usada para o container.
- `container_port`: Porta exposta pelo container.
- `host_port`: Porta no host mapeada para a porta do container (normalmente 0 para portas dinâmicas).
- `environment_variables`: Lista de variáveis de ambiente para o container.

## Configuração

1. **Clone o Repositório**

   Clone este repositório para sua máquina local:

   ```sh
   git clone https://github.com/your-repository.git
   cd your-repository
   ```

2. **Configuração das Variáveis**

   Edite o arquivo `terraform.tfvars` para configurar as variáveis conforme suas necessidades. Por exemplo, ajuste a região, a família da tarefa, os valores de CPU e memória, e outras variáveis de acordo com seu ambiente.

3. **Inicializar o Terraform**

   Execute o comando abaixo para inicializar o Terraform e baixar os plugins necessários:

   ```sh
   terraform init
   ```

4. **Planear a Implementação**

   Gere um plano para revisar as mudanças que serão feitas:

   ```sh
   terraform plan
   ```

5. **Aplicar as Mudanças**

   Aplique as mudanças para criar os recursos definidos:

   ```sh
   terraform apply
   ```

   Confirme a aplicação quando solicitado.

6. **Verificar os Recursos**

   Verifique a AWS Management Console para confirmar que a definição da tarefa ECS foi criada conforme esperado.

## Limpeza

Para destruir os recursos criados e limpar seu ambiente, execute:

```sh
terraform destroy
```

Confirme a destruição quando solicitado.

## Dúvidas e Suporte

Se você encontrar problemas ou tiver dúvidas, consulte a [documentação do Terraform](https://www.terraform.io/docs) e a [documentação do Amazon ECS](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/what-is-amazon-ecs.html).
