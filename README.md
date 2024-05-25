# dev-scripts

Scripts uteis para o dia a dia da vida de um desenvolvedor de software.


## Instalação

Clone Repositório

```bash
git clone git@github.com:marcelo-michels/dev-scripts.git ~/dev-scripts
```

Adicione o diretório ao PATH

```bash
echo 'source ~/dev-scripts/alias/index.sh' >> ~/.bashrc
```

## Recursos

### Alias 

Adiciona atalhos para comandos comuns do dia a dia.  
Exemplos:  

**Git** 
```bash 
alias gits="git status"  
alias gita="git add --all"  
alias gitc="git commit -m"  
alias gitac="gita && gitc"  
```

**NPM**  
```bash 
alias nr="npm run"  
alias nrd="nr dev"  
alias nrt="nr test"  
```

Entre outros...

### Docker

Scripts para facilitar o uso do Docker.  
Contem alguns docker-compose comuns para rodar rapidamente um ambiente de desenvolvimento com algumas ferramentas.

### Setup 

Scripts para instalar e configurar ferramentas comuns em sistemas operacionais.