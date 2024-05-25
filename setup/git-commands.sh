
# Fetch All
git fetch --all

# Show branchs locally without remotely
git branch -vv | cut -c 3- | awk '$3 !~/\[/ { print $1 }'

# All branches.
git branch -a 

# Remote branches only.
git branch -r

# Local branches only.
git branch

# delete branch locally
git branch -d name

# delete branch remotely
git push origin --delete name

# ignorar arquivos apenas na maquina localmente
git update-index --assume-unchanged src/app/pages/developer/*

# Reverte ignorar arquivos apenas na maquina localmente
git update-index --no-assume-unchanged src/app/pages/developer/*

# Criar uma tag e fazer o push dela
git tag -m "Versão 1.0.0" name master
git push origin --tags

# Deletar uma Tag localmente e remotamente
git tag -d name
git push --delete origin name

# Desfaz tudo que ainda não foi feito push
git reset --hard origin/master