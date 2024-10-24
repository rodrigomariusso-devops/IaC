# Repositório de Infraestrutura como Código (IaC)

Este repositório contém diversos projetos relacionados à automação e gerenciamento de infraestrutura como código (IaC). O objetivo é fornecer exemplos e guias que utilizam ferramentas como **Terraform** e **Ansible** para facilitar a criação, gerenciamento e configuração de ambientes de infraestrutura.

## Estrutura do Repositório

- **Terraform**: Diretório com scripts e módulos para provisionamento de recursos em nuvens públicas como AWS, Azure e Google Cloud. Inclui exemplos para criação de instâncias EC2, redes, grupos de segurança, entre outros.
  
- **Ansible**: Diretório contendo playbooks que automatizam a instalação e configuração de serviços em máquinas provisionadas, como RabbitMQ, Nginx, bancos de dados e mais.

## Ferramentas Utilizadas

### Terraform
- **Provisionamento de Infraestrutura**: O Terraform é utilizado para criar e gerenciar a infraestrutura de maneira declarativa. Todos os arquivos `.tf` contêm as definições para configurar recursos na nuvem.

### Ansible
- **Automação de Configurações**: O Ansible é usado para aplicar configurações e instalar software nas máquinas provisionadas pelo Terraform. Ele é responsável por garantir que os ambientes estejam corretamente configurados para executar aplicações e serviços.

## Como Usar

### 1. Clonando o Repositório

```bash
git clone --branch minha-branch https://github.com/usuario/repositorio.git
cd repositorio-iac
```

### 2. Provisionando Infraestrutura com Terraform

Navegue até o diretório do projeto desejado e execute os seguintes comandos:

```bash
cd terraform/<projeto>
terraform init    # Inicializa os provedores e plugins
terraform plan    # Exibe o plano de execução
terraform apply   # Cria a infraestrutura
```

### 3. Configurando a Infraestrutura com Ansible

Após a infraestrutura ser provisionada com o Terraform, use o Ansible para configurar as máquinas:

```bash
cd ansible/<projeto>
ansible-playbook -i inventory.ini playbook.yml
```

### 4. Personalizações

Cada projeto contém um arquivo `README.md` individual com detalhes específicos sobre as configurações e parâmetros usados.


Este repositório tem como objetivo facilitar o aprendizado e a prática de Infraestrutura como Código com Terraform e Ansible.
