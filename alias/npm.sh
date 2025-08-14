
# NPM
alias nr="npm run"
alias nrd="nr dev"
alias nrt="nr test"
alias nrtw="nr test:watch"
alias nrtd="nr test:dev"
alias nrb="nr build"
alias ns="npm start"
alias ni="npm install"
alias nu="npm uninstall"
alias npmrmi="rm -rf node_modules && rm -f package-lock.json && npm i"
alias npmCheckUpdates="npx npm-check-updates --format group -i"
alias npmUpdateDependencies="npm update --save"

function npmi {
  # Verificar se existe package.json
  if [ ! -f "package.json" ]; then
    echo "❌ Erro: package.json não encontrado no diretório atual"
    return 1
  fi
  
  # Contador de gerenciadores detectados
  local managers_found=0
  local manager_to_use=""
  local lock_files=""
  
  # Verificar package-lock.json (npm)
  if [ -f "package-lock.json" ]; then
    managers_found=$((managers_found + 1))
    manager_to_use="npm"
    lock_files="${lock_files}package-lock.json (npm), "
  fi
  
  # Verificar yarn.lock (yarn)
  if [ -f "yarn.lock" ]; then
    managers_found=$((managers_found + 1))
    manager_to_use="yarn"
    lock_files="${lock_files}yarn.lock (yarn), "
  fi
  
  # Verificar pnpm-lock.yaml (pnpm)
  if [ -f "pnpm-lock.yaml" ]; then
    managers_found=$((managers_found + 1))
    manager_to_use="pnpm"
    lock_files="${lock_files}pnpm-lock.yaml (pnpm), "
  fi
  
  # Remover vírgula final
  lock_files=${lock_files%, }
  
  # Verificar se há conflito
  if [ $managers_found -gt 1 ]; then
    echo "❌ Erro: Múltiplos gerenciadores de pacotes detectados!"
    echo "   Arquivos encontrados: $lock_files"
    echo "   Por favor, remova os arquivos de lock desnecessários para evitar conflitos."
    echo "   Recomendação: Use apenas um gerenciador de pacotes por projeto."
    return 1
  fi
  
  # Se nenhum lock file foi encontrado, usar npm por padrão
  if [ $managers_found -eq 0 ]; then
    echo "⚠️  Nenhum arquivo de lock encontrado. Usando npm por padrão..."
    manager_to_use="npm"
  fi
  
  # Executar o comando de instalação apropriado
  case $manager_to_use in
    "npm")
      echo "📦 Instalando dependências com npm..."
      npm install
      ;;
    "yarn")
      echo "📦 Instalando dependências com yarn..."
      yarn install
      ;;
    "pnpm")
      echo "📦 Instalando dependências com pnpm..."
      pnpm install
      ;;
  esac
  
  # Verificar status de saída
  if [ $? -eq 0 ]; then
    echo "✅ Dependências instaladas com sucesso usando $manager_to_use!"
  else
    echo "❌ Erro ao instalar dependências com $manager_to_use"
    return 1
  fi
}