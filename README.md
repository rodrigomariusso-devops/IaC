# Instalação do RabbitMQ em EC2 com Ansible

Este playbook do Ansible automatiza o processo de instalação do RabbitMQ em uma instância EC2 com base Ubuntu. Ele inclui a configuração do repositório, instalação de dependências, criação de um usuário administrativo no RabbitMQ e a criação de uma fila de teste.

## Pré-requisitos

Antes de executar este playbook, certifique-se de que você atenda aos seguintes pré-requisitos:

1. **Instância EC2**: Você deve ter uma instância EC2 em execução com o sistema operacional Ubuntu.
2. **Chaves SSH**: O Ansible deve ter acesso à instância EC2 usando SSH.
3. **Ansible instalado**: Certifique-se de que o Ansible esteja instalado na máquina de controle.
4. **RabbitMQ hosts definidos**: O host da instância EC2 deve estar configurado no seu arquivo `hosts` do Ansible, sob o nome `rabbitmq`.

## Tarefas Realizadas

### 1. **Criação de Script de Instalação**
O playbook cria um script `install-rabbitmq.sh` na instância EC2 que contém todos os comandos necessários para instalar o RabbitMQ e suas dependências. Esses comandos incluem:

- Instalação de pacotes essenciais como `curl`, `gnupg`, e `apt-transport-https`.
- Download e configuração das chaves GPG para os repositórios do RabbitMQ e Erlang.
- Configuração dos repositórios apt para o RabbitMQ e Erlang.
- Atualização dos índices de pacotes e instalação do RabbitMQ e Erlang.

### 2. **Garantir Permissões do Script**
O playbook garante que o script de instalação criado seja executável, aplicando a permissão `0755`.

### 3. **Execução do Script**
O script é executado na instância, instalando todas as dependências e o RabbitMQ.

### 4. **Habilitação do Plugin de Gerenciamento**
Após a instalação, o plugin de gerenciamento do RabbitMQ é habilitado, permitindo o acesso à interface de gerenciamento via navegador web.

### 5. **Reinicialização do Serviço RabbitMQ**
O serviço `rabbitmq-server` é reiniciado para garantir que todas as mudanças sejam aplicadas corretamente.

### 6. **Criação de Usuário no RabbitMQ**
Um novo usuário chamado `user` com senha `user` é criado no RabbitMQ.

### 7. **Definição de Permissões**
O usuário `user` é atribuído ao grupo de administradores do RabbitMQ, com permissões totais sobre o servidor.

### 8. **Criação de Fila "teste"**
Uma fila chamada `teste` é criada no RabbitMQ usando a API HTTP de gerenciamento. Essa fila é configurada como durável.

## Execução

1. Clone o repositório ou copie o playbook para a sua máquina de controle do Ansible.
2. Certifique-se de que a instância EC2 esteja configurada no arquivo de inventário do Ansible (`hosts`), sob o grupo `rabbitmq`.
3. Execute o playbook com o seguinte comando:

   ```bash
   ansible-playbook -i inventory.ini playbook.yml
   ```

4. O RabbitMQ será instalado na instância EC2, e uma interface de gerenciamento estará disponível no endereço `http://<ip-da-instância>:15672` (credenciais: `user` / `user`).

## Notas Adicionais

- A fila criada é apenas para testes e está configurada como durável, o que significa que ela sobreviverá a reinicializações do RabbitMQ.
- Certifique-se de alterar as credenciais do usuário criado para um ambiente de produção mais seguro.

Este playbook facilita a instalação e configuração de um servidor RabbitMQ em uma instância EC2 de maneira simples e automatizada.
