#!/usr/bin/env bash

# Script para fazer push do projeto para o GitHub (Linux/Mac)

echo "=================================="
echo "DIO Cadastro - GitHub Push Script"
echo "=================================="
echo ""

# Pedir as informações do usuário
read -p "Digite seu usuário do GitHub: " GITHUB_USER
read -p "Digite o nome do repositório (padrão: dio-cadastro): " REPO_NAME

if [ -z "$REPO_NAME" ]; then
    REPO_NAME="dio-cadastro"
fi

REPO_URL="https://github.com/$GITHUB_USER/$REPO_NAME.git"

echo ""
echo "Configurações:"
echo "  Usuário: $GITHUB_USER"
echo "  Repositório: $REPO_NAME"
echo "  URL: $REPO_URL"
echo ""

# Confirmar antes de prosseguir
read -p "Deseja continuar? (s/n): " CONFIRM
if [ "$CONFIRM" != "s" ] && [ "$CONFIRM" != "S" ]; then
    echo "Operação cancelada!"
    exit 0
fi

echo ""
echo "Configurando repositório remoto..."

# Adicionar remote
git remote add origin "$REPO_URL"
echo "✓ Remote configurado"

# Renomear branch para main
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ "$CURRENT_BRANCH" != "main" ]; then
    git branch -m main
    echo "✓ Branch renomeado para 'main'"
fi

echo ""
echo "Fazendo push para GitHub..."
echo "(Você pode ser solicitado a fazer login no GitHub)"

# Fazer push
git push -u origin main

echo ""
echo "=================================="
echo "✓ Push concluído com sucesso!"
echo "=================================="
echo ""
echo "Seu repositório está disponível em:"
echo "https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
