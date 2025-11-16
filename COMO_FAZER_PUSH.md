# 🚀 Como Fazer Push para GitHub

## ⚡ Forma Rápida (Recomendada)

### Opção 1: Usar o Script PowerShell (Automático)

1. **Abra PowerShell na pasta do projeto**
2. **Execute**:
```powershell
.\push-to-github.ps1
```
3. **Digite seu usuário do GitHub**
4. **Digite o nome do repositório** (ou deixe vazio para usar `dio-cadastro`)
5. **Confirme com `s`**
6. **Pronto!** Seu código estará no GitHub

---

## 📋 Forma Manual (Passo a Passo)

### Passo 1: Criar Repositório no GitHub

1. Acesse: **https://github.com/new**
2. Preencha:
   - **Repository name**: `dio-cadastro` (ou seu nome escolhido)
   - **Description**: `Modern signup page with React and Vite`
   - **Visibility**: Public
3. **Desmarque** "Initialize this repository with a README"
4. Clique em **"Create repository"**

### Passo 2: Copiar as Instruções

GitHub mostrará uma página com comandos. Use UM deles:

#### Opção A: HTTPS (Recomendado para iniciantes)
```bash
git remote add origin https://github.com/SEU_USUARIO/dio-cadastro.git
git branch -m main
git push -u origin main
```

#### Opção B: SSH (Mais seguro, requer configuração)
```bash
git remote add origin git@github.com:SEU_USUARIO/dio-cadastro.git
git branch -m main
git push -u origin main
```

### Passo 3: Executar no Terminal

1. **Abra PowerShell** na pasta do projeto
2. **Cole os comandos** (HTTPS é mais fácil)
3. **Se pedir login**: Use suas credenciais do GitHub
   - Se usar 2FA: Gere um Personal Access Token
4. **Pronto!** Seu código está no GitHub

---

## 🔑 Se Receber Erro de Autenticação

### Solução 1: Usar HTTPS + Token

1. Acesse: https://github.com/settings/tokens
2. Clique em **"Generate new token"** → **"Tokens (classic)"**
3. Marque:
   - ✅ `repo` (acesso completo ao repositório)
   - ✅ `workflow` (opcional, para GitHub Actions)
4. Copie o token
5. Na senha do git, cole o token (não sua senha!)

### Solução 2: Configurar SSH

Se você é avançado e quer mais segurança:

1. Gere chave SSH:
```bash
ssh-keygen -t ed25519 -C "seu.email@example.com"
```

2. Adicione a chave pública no GitHub:
   - Acesse: https://github.com/settings/keys
   - Clique em "New SSH key"
   - Cole sua chave pública

3. Use os comandos SSH acima

---

## ✅ Após o Push

**Verifique no GitHub**:
- Acesse seu repositório
- Você deve ver todos os arquivos do projeto
- README.md aparecerá automaticamente

**Compartilhe o link**:
- `https://github.com/SEU_USUARIO/dio-cadastro`
- Adicione ao seu portfólio
- Compartilhe em entrevistas

---

## 📊 Status Atual do Projeto

```
✅ Código pronto localmente
✅ Git inicializado
✅ Commit criado
⏳ Aguardando: Fazer push para GitHub
```

---

## 🎯 Checklist

- [ ] Criei repositório no GitHub
- [ ] Copiei a URL do repositório
- [ ] Executei `git remote add origin ...`
- [ ] Executei `git push -u origin main`
- [ ] Verifiquei se apareceu no GitHub
- [ ] Copiei o link para meu portfólio

---

## 💡 Dica Extra

Depois de fazer o push, você pode:

1. **Adicionar badge no README**:
```markdown
![GitHub](https://img.shields.io/badge/GitHub-DIO%20Cadastro-blue?logo=github)
```

2. **Ativar GitHub Pages** (para visualizar online):
   - Settings → Pages
   - Escolha: Deploy from a branch
   - Branch: main, folder: /(root)
   - Seu site estará em: `https://SEU_USUARIO.github.io/dio-cadastro`

3. **Adicionar ao portfólio profissional**:
   - LinkedIn
   - Seu site pessoal
   - CV

---

**Pronto para começar?** 🚀

Execute:
```powershell
.\push-to-github.ps1
```

Ou vá para: https://github.com/new
