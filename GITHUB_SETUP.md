# 📋 Instruções para Criar Repositório no GitHub

## Passo 1: Criar Repositório no GitHub

1. **Acesse GitHub**: https://github.com/new
2. **Nome do Repositório**: `dio-cadastro` (ou outro nome de sua preferência)
3. **Descrição**: `Modern signup page built with React + Vite featuring glassmorphism design`
4. **Visibilidade**: Public (para mostrar no portfólio)
5. **NÃO** inicialize com README, .gitignore ou license (já temos localmente)
6. **Clique em**: "Create repository"

## Passo 2: Copiar a URL SSH ou HTTPS do Repositório

Na página do novo repositório, você verá:
```
git remote add origin https://github.com/SEU_USUARIO/dio-cadastro.git
git branch -m main
git push -u origin main
```

Ou se preferir SSH:
```
git remote add origin git@github.com:SEU_USUARIO/dio-cadastro.git
git branch -m main
git push -u origin main
```

## Passo 3: Executar os Comandos

Abra seu terminal na pasta do projeto e execute:

### Se usando HTTPS:
```bash
git remote add origin https://github.com/SEU_USUARIO/dio-cadastro.git
git branch -m main
git push -u origin main
```

### Se usando SSH (mais seguro):
```bash
git remote add origin git@github.com:SEU_USUARIO/dio-cadastro.git
git branch -m main
git push -u origin main
```

> **Nota**: Substitua `SEU_USUARIO` pelo seu usuário do GitHub

## Passo 4: Configurar Token (Se necessário)

Se receber erro de autenticação ao usar HTTPS:

1. GitHub Settings → Developer settings → Personal access tokens
2. Clique em "Generate new token"
3. Selecione as permissões: `repo`, `workflow`
4. Copie o token
5. Na mensagem de password do git, cole o token

## Após o Push

Seus arquivos estarão no GitHub! Você pode:

✅ Compartilhar o link com recrutadores
✅ Adicionar ao seu portfólio
✅ Usar para portfolio projects no LinkedIn
✅ Fazer clone em outro local se necessário

## Status Atual

Seu repositório local está **pronto para push**:
- ✅ Git inicializado
- ✅ Arquivos adicionados
- ✅ Primeiro commit criado
- ⏳ Aguardando: Criar repositório no GitHub e fazer push

---

**Próximo passo**: Clique em https://github.com/new e siga as instruções acima!
