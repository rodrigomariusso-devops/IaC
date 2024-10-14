# Projeto Terraform para Criar um Serviço ECS

Este projeto utiliza o Terraform para criar um serviço Amazon ECS (Elastic Container Service) com um balanceador de carga. O serviço é configurado para executar contêineres em instâncias EC2 dentro de uma VPC. 

## Pré-requisitos

- **Terraform**: Certifique-se de ter o Terraform instalado em sua máquina. Você pode verificar a instalação executando `terraform -v` no terminal.
- **AWS CLI**: O AWS CLI deve estar instalado e configurado com as credenciais de acesso apropriadas para permitir que o Terraform se conecte à sua conta AWS.


```

## Como Usar

1. **Clone o Repositório**:

   ```bash
   git clone <URL_DO_REPOSITORIO>
   cd <NOME_DA_PASTA>
   rm .git/
   ```

2. **Inicialize o Terraform**:

   Execute o comando abaixo para inicializar o diretório de trabalho do Terraform:

   ```bash
   terraform init
   ```

3. **Verifique o Plano de Execução**:

   Antes de aplicar as mudanças, você pode visualizar o que será criado:

   ```bash
   terraform plan
   ```

4. **Aplique as Mudanças**:

   Para criar os recursos definidos, execute:

   ```bash
   terraform apply
   ```

   Confirme a ação digitando `yes` quando solicitado.

5. **Verifique os Recursos Criados**:

   Após a execução bem-sucedida, você pode verificar os recursos criados no Console da AWS

## Explicação do Código

### `main.tf`

Este é o arquivo principal que contém a configuração geral do Terraform. Nele, você define as configurações da VPC, sub-redes e a instância EC2 onde o serviço ECS será executado.

### `ecs_service/main.tf`

Aqui, é definida a configuração do serviço ECS, incluindo o nome do serviço, o número desejado de instâncias, a definição da tarefa (task definition) e as configurações de balanceamento de carga.

### `lb_rule/main.tf`

Este módulo configura as regras do listener do Load Balancer. As regras definem como o tráfego será roteado para os contêineres.

### `target_group/main.tf`

Este módulo define o Target Group que será associado ao Load Balancer. Aqui, são configuradas as verificações de integridade e o protocolo de comunicação.

## Variáveis

Você pode personalizar o comportamento do Terraform definindo variáveis no arquivo `variables.tf`. Isso permite que você especifique parâmetros como nomes de recursos, IDs de VPC e outras configurações.