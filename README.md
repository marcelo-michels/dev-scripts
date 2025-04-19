# dev-scripts

Scripts úteis para o dia a dia da vida de um desenvolvedor de software.

## Instalação

Clone o repositório:

```bash
git clone git@github.com:marcelo-michels/dev-scripts.git ~/dev-scripts
```

Adicione o diretório ao PATH:

```bash
echo 'source ~/dev-scripts/alias/index.sh' >> ~/.bashrc
```

## Recursos

### Alias

Adiciona atalhos para comandos comuns do dia a dia, como:

- **Git**: Atalhos para status, adicionar, commitar e muito mais.
- **NPM**: Atalhos para rodar scripts, instalar e atualizar pacotes.
- **Docker**: Atalhos para gerenciar containers e imagens.

Exemplo:
```bash
alias gits="git status"
alias nr="npm run"
alias dps="docker ps"
```

### Docker

Scripts e configurações para facilitar o uso do Docker no desenvolvimento. Inclui `docker-compose.yml` para:

- MongoDB
- PostgreSQL
- RabbitMQ
- Redis

Exemplo de uso:
```bash
cd ~/dev-scripts/docker/mongo
docker-compose up -d
```

### Setup

Scripts para instalar e configurar ferramentas comuns em sistemas operacionais:

- **setup-mac.sh**: Instalação de ferramentas no macOS.
- **setup-deb.sh**: Instalação de ferramentas em distribuições baseadas em Debian.
- **git-config.sh**: Configuração inicial do Git.
- **linux-commands.sh**: Comandos úteis para Linux.

### Shortcuts

Scripts para criar atalhos rápidos para tarefas específicas, como ajuste de brilho da tela:

- **brilho_alto.sh**: Define o brilho da tela para o nível alto.
- **brilho_baixo.sh**: Define o brilho da tela para o nível baixo.
- **brilho_medio.sh**: Define o brilho da tela para o nível médio.

### Scripts

Scripts utilitários para automação de tarefas e manutenção:

- **github_clean_actions.sh**: Limpa workflows antigos do GitHub Actions.