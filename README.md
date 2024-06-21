# Projeto de Aplicação WordPress Dockerizada

Este projeto configura um ambiente de desenvolvimento WordPress usando Docker e Docker Compose. Ele é projetado para ajudar desenvolvedores a subir e rodar uma instância do WordPress rapidamente para fins de desenvolvimento.

## Pré-requisitos

Antes de começar, certifique-se de ter o seguinte instalado:

- [Docker](https://docs.docker.com/engine/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Estrutura do Projeto

A raiz do projeto contém o seguinte:

- `docker-compose.yml`: Define os serviços que compõem a aplicação.
- `.env`: (opcional) Pode ser usado para definir valores para as variáveis de ambiente necessárias para os serviços.

## Serviços

O projeto é composto pelos seguintes serviços:

### MySQL

Este é o serviço de banco de dados do projeto, rodando a versão 5.7 do MySQL.

### WordPress

Este é o serviço principal do aplicativo. É construído usando o Dockerfile no diretório raiz do projeto.

### NGINX

O servidor web NGINX atua como um proxy reverso para o serviço WordPress.

## Como usar

Para utilizar este projeto, siga os passos:

1. Clone este repositório.
2. (Opcional) Crie um arquivo `.env` na raiz do projeto e defina as seguintes variáveis:
    - `MYSQL_ROOT_PASSWORD`
    - `MYSQL_DATABASE`
    - `MYSQL_USER`
    - `MYSQL_PASSWORD`
    - `WORDPRESS_DB_USER`
    - `WORDPRESS_DB_PASSWORD`
    - `WORDPRESS_DB_NAME`
3. Na raiz do projeto, execute o comando: `docker-compose up`.

Após esses passos, a aplicação WordPress estará disponível em `http://localhost:8000`.

## Limpeza

Para parar e remover os contêineres, a rede e, opcionalmente, os volumes definidos em `docker-compose.yml`, você pode usar o comando: `docker-compose down`.

## Contribuindo

Contribuições para este projeto são bem-vindas. Para contribuir:

1. Faça um Fork deste repositório.
2. Crie uma nova branch.
3. Faça suas mudanças.
4. Submeta um PR com suas mudanças para ser revisado.

## Suporte

Se você tiver algum problema ou sugestão, por favor abra uma issue neste repositório.

## Licença

Este projeto é licenciado sob a licença MIT.