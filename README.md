# Docker PHP - Ambiente de Desenvolvimento

Ambiente PHP com Apache rodando via Docker, voltado para testes e desenvolvimento.

## Pré-requisitos

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/) com Docker Compose (versão v2 ou superior)

## Passo a passo

### 1. Clone o repositório

```bash
git clone <URL_DO_REPOSITORIO>
cd docker_test_php
```

### 2. Suba o ambiente com Docker

```bash
docker compose up -d
```

Esse comando irá:
- Fazer o build da imagem PHP 8.4 com Apache
- Subir o container em segundo plano (`-d`)
- Mapear a porta `8000` da sua máquina para a porta `80` do container

### 3. Acesse no navegador

Abra o navegador e acesse:

```
http://localhost:8000
```

Você verá a página gerada pelo `src/index.php`.

### 4. Adicionando novos arquivos PHP

Coloque seus arquivos `.php` dentro da pasta `src/`. Eles ficam disponíveis imediatamente, sem precisar reiniciar o container.

Exemplo: um arquivo `src/teste.php` pode ser acessado em `http://localhost:8000/teste.php`.

### 5. Parando o ambiente

```bash
docker compose down
```

## Estrutura do projeto

```
docker_test_php/
├── Dockerfile          # Imagem PHP 8.4 + Apache
├── docker-compose.yml  # Configuração do container
└── src/                # Arquivos PHP servidos pelo Apache
    └── index.php
```
