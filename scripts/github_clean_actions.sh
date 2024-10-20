#!/bin/bash

GITHUB_TOKEN=$1; # Token de acesso do GitHub
REPO_OWNER=$2;   # Nome do proprietário do repositório
REPO_NAME=$3;    # Nome do repositório

# Verifica se os argumentos foram informados
if [ -z "$GITHUB_TOKEN" ] || [ -z "$REPO_OWNER" ] || [ -z "$REPO_NAME" ]; then
  echo "Informe todos os argumentos: GITHUB_TOKEN REPO_OWNER REPO_NAME";
  exit 1;
fi

# Obtém as execuções de workflow
runs=$(curl -s -H "Authorization: token $GITHUB_TOKEN" \
  "https://api.github.com/repos/$REPO_OWNER/$REPO_NAME/actions/runs?per_page=100" | jq -r '.workflow_runs[].id')

# Exclui cada execução encontrada
for run_id in $runs; do
  curl -X DELETE -H "Authorization: token $GITHUB_TOKEN" \
    "https://api.github.com/repos/$REPO_OWNER/$REPO_NAME/actions/runs/$run_id"
  echo "Run $run_id deleted"
done