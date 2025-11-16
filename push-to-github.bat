@echo off
REM Script para fazer push do projeto para o GitHub
REM Execute este arquivo após criar o repositório no GitHub

cls
echo ====================================
echo DIO Cadastro - GitHub Push Script
echo ====================================
echo.

REM Pedir as informações do usuário
set /p GITHUB_USER="Digite seu usuário do GitHub: "
set /p REPO_NAME="Digite o nome do repositório (padrão: dio-cadastro): "

if "%REPO_NAME%"=="" set REPO_NAME=dio-cadastro

echo.
echo Configurando repositório remoto...
echo Repositório: https://github.com/%GITHUB_USER%/%REPO_NAME%.git

REM Adicionar remote
git remote add origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git

REM Renomear branch para main
git branch -m main

echo.
echo Fazendo push para GitHub...
echo (Você pode ser solicitado a fazer login no GitHub)

REM Fazer push
git push -u origin main

echo.
echo ====================================
echo Push concluído com sucesso!
echo ====================================
echo.
echo Seu repositório está disponível em:
echo https://github.com/%GITHUB_USER%/%REPO_NAME%
echo.
pause
