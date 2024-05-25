
# lista as configurações
git config --list

# Configura nome e email

# O nome e email global é utilizado para todos os projetos
git config --global user.name "Marcelo Michels" 
git config --global user.email "marcelo@michels.app"
# O nome e email local é utilizado apenas para o projeto atual
git config --local user.name "Marcelo Michels"
git config --local user.email "marcelo@michels.app"

# Abre as configuracoes 
git config --global --edit
git config --local --edit

# Alterado o editor do git
git config --global core.editor "code"
git config --local core.editor "code" 

