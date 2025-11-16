#!/usr/bin/env powershell

# Script para fazer push do projeto para o GitHub
# Uso: .\push-to-github.ps1

Write-Host "===================================" -ForegroundColor Cyan
Write-Host "DIO Cadastro - GitHub Push Script" -ForegroundColor Cyan
Write-Host "===================================" -ForegroundColor Cyan
Write-Host ""

# Pedir as informações do usuário
$GitHubUser = Read-Host "Digite seu usuário do GitHub"
$RepoName = Read-Host "Digite o nome do repositório (padrão: dio-cadastro)"

if ([string]::IsNullOrWhiteSpace($RepoName)) {
    $RepoName = "dio-cadastro"
}

$RepoUrl = "https://github.com/$GitHubUser/$RepoName.git"

Write-Host ""
Write-Host "Configurações:" -ForegroundColor Yellow
Write-Host "  Usuário: $GitHubUser"
Write-Host "  Repositório: $RepoName"
Write-Host "  URL: $RepoUrl"
Write-Host ""

# Confirmar antes de prosseguir
$Confirm = Read-Host "Deseja continuar? (s/n)"
if ($Confirm -ne "s" -and $Confirm -ne "S") {
    Write-Host "Operação cancelada!" -ForegroundColor Red
    exit
}

Write-Host ""
Write-Host "Configurando repositório remoto..." -ForegroundColor Green

try {
    # Adicionar remote
    git remote add origin $RepoUrl
    Write-Host "✓ Remote configurado" -ForegroundColor Green
}
catch {
    Write-Host "Erro ao adicionar remote: $_" -ForegroundColor Red
    exit 1
}

try {
    # Renomear branch para main (se necessário)
    $CurrentBranch = git rev-parse --abbrev-ref HEAD
    if ($CurrentBranch -ne "main") {
        git branch -m main
        Write-Host "✓ Branch renomeado para 'main'" -ForegroundColor Green
    }
}
catch {
    Write-Host "Aviso: Não foi possível renomear branch" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Fazendo push para GitHub..." -ForegroundColor Green
Write-Host "(Você pode ser solicitado a fazer login no GitHub)" -ForegroundColor Yellow

try {
    git push -u origin main
    Write-Host ""
    Write-Host "===================================" -ForegroundColor Cyan
    Write-Host "✓ Push concluído com sucesso!" -ForegroundColor Green
    Write-Host "===================================" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Seu repositório está disponível em:" -ForegroundColor Yellow
    Write-Host "https://github.com/$GitHubUser/$RepoName" -ForegroundColor Cyan
    Write-Host ""
}
catch {
    Write-Host "Erro ao fazer push: $_" -ForegroundColor Red
    exit 1
}
