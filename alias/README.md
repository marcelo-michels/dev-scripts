# Alias

Scripts para criar atalhos para comandos comuns do dia a dia. Esses atalhos ajudam a economizar tempo e simplificar tarefas repetitivas.

## Exemplos de Alias

### Git
```bash
alias gits="git status"
alias gita="git add --all"
alias gitc="git commit -m"
alias gitac="gita && gitc"
```

### NPM
```bash
alias nr="npm run"
alias nrd="nr dev"
alias nrt="nr test"
```

### Docker
```bash
alias dps="docker ps"
alias dstop="docker stop $(docker ps -q)"
alias drm="docker rm $(docker ps -aq)"
```

## Como Usar

1. Certifique-se de que o arquivo `index.sh` seja carregado no seu shell. Adicione a seguinte linha ao seu `~/.bashrc` ou `~/.zshrc`:
   ```bash
   source ~/dev-scripts/alias/index.sh
   ```
2. Reinicie o terminal ou execute `source ~/.bashrc` (ou `source ~/.zshrc`).