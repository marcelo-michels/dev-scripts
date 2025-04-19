# Docker

Scripts e configurações para facilitar o uso do Docker no desenvolvimento.

## Estrutura

- **mongo/**: Configuração do MongoDB com `docker-compose.yml`.
- **postgres/**: Configuração do PostgreSQL com `docker-compose.yml`.
- **rabbitmq/**: Configuração do RabbitMQ com `docker-compose.yml`.
- **redis/**: Configuração do Redis com `docker-compose.yml`.

## Como Usar

1. Navegue até a pasta do serviço desejado, por exemplo:
   ```bash
   cd ~/dev-scripts/docker/mongo
   ```
2. Inicie o serviço com o Docker Compose:
   ```bash
   docker-compose up -d
   ```
3. Para parar o serviço:
   ```bash
   docker-compose down
   ```

## Docker Version

  `docker version`

## Listar todos os contaiters que estão rodando 

  `docker ps`

## Listar todos os contaiters que estão parados 

  `docker ps -a`

## Remove todos os containers  

  `docker system prune`  
  `docker container prune`

## Inicia um docker compose file  

  `docker-compose up -d`  

## Para todos os containers que estejam rodando 

  `docker stop $(docker ps -aq)`  

## Parar um container  

  `docker stop <container_id>`  

## Iniciar um container  

  `docker start <container_id>`  

## remover um container  

  `docker rm <container_id>`  

## entrar no terminal de um container

  `docker exec -it <container_id> bash`
