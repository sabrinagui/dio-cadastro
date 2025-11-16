# Guia de Desenvolvimento - DIO Cadastro

## 📋 Estrutura de Componentes

### App.jsx
Componente raiz da aplicação. Importa e renderiza os componentes principais:
- `Navbar` - Barra de navegação
- `HeroSection` - Seção com descrição da plataforma
- `SignUpForm` - Formulário de cadastro

### components/Navbar.jsx
Componente da barra de navegação com:
- Logo com gradiente
- Botões de navegação
- Estado ativo para o botão atual

### components/HeroSection.jsx
Componente que exibe o título principal e descrição da plataforma.

### components/SignUpForm.jsx
Componente do formulário com:
- Gerenciamento de estado com `useState`
- Validação de campos
- Toggle de visibilidade de senha
- Manipulação de submit do formulário

## 🎨 Sistema de Estilos

### App.css
Contém todos os estilos da aplicação, organizados por:
1. **Reset e estilos globais** - Definições base de margin, padding, fonts
2. **Layout principal** - Container, navbar, sections
3. **Componentes** - Estilos para cada parte da interface
4. **Responsividade** - Media queries para diferentes tamanhos de tela

### index.css
Estilos globais do HTML e body. Define o fundo com gradiente.

## 🔧 Constants

O arquivo `constants.js` centraliza:
- Textos do formulário
- Placeholders dos inputs
- Ícones usados
- Itens de navegação
- Paleta de cores do tema

Isso facilita manutenção e reutilização em diferentes componentes.

## 🚀 Padrões de Código

### Nomenclatura
- **Componentes**: PascalCase (ex: `SignUpForm`)
- **Funções**: camelCase (ex: `handleSubmit`)
- **Classes CSS**: kebab-case (ex: `.form-container`)
- **Variáveis**: camelCase (ex: `formData`)

### Estrutura de Componentes
```jsx
import { useState } from 'react'

function ComponentName() {
  const [state, setState] = useState(initialValue)

  const handleEvent = (e) => {
    // Lógica
  }

  return (
    <div className="container">
      {/* JSX */}
    </div>
  )
}

export default ComponentName
```

### Imports
- React hooks no topo
- Estilos CSS após imports de componentes
- Exports padrão no final do arquivo

## 📱 Responsividade

O projeto utiliza breakpoints móveis:
- **Desktop**: 1024px+
- **Tablet**: 768px - 1023px
- **Mobile**: < 768px
- **Small Mobile**: < 480px

Cada media query mantém a hierarquia e estrutura dos estilos.

## ✨ Efeitos Visuais

### Glassmorphism
Utiliza `backdrop-filter: blur()` e `rgba()` para efeito de vidro.

### Transições
Todas as interações usam `transition: all 0.3s ease` para fluidez.

### Sombras
Box shadows aplicadas para profundidade:
```css
box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4);
```

## 🔄 Fluxo de Dados

### Formulário
1. Usuário digita nos inputs
2. `onChange` dispara `handleChange`
3. `handleChange` atualiza o estado via `setFormData`
4. Componente re-renderiza com novos valores
5. Ao submeter, `handleSubmit` captura os dados

## 📝 Como Adicionar Novos Campos

1. Adicione o campo ao estado inicial em `SignUpForm.jsx`:
```jsx
const [formData, setFormData] = useState({
  nome: '',
  email: '',
  senha: '',
  novocampo: '' // Adicione aqui
})
```

2. Adicione o input no formulário:
```jsx
<div className="form-group">
  <label htmlFor="novocamp" className="form-label">
    <span className="label-icon">icon</span>
    Label
  </label>
  <input
    type="text"
    id="novocamp"
    name="novocamp"
    value={formData.novocamp}
    onChange={handleChange}
    placeholder="..."
    className="form-input"
    required
  />
</div>
```

3. Opcionalmente, adicione a constante em `constants.js`

## 🐛 Debug

Para debug, o `handleSubmit` loga os dados do formulário:
```jsx
const handleSubmit = (e) => {
  e.preventDefault()
  console.log('Dados do formulário:', formData)
}
```

Abra o DevTools (F12) para ver os dados no console.

## 📦 Build e Deploy

### Build para Produção
```bash
npm run build
```

Cria uma pasta `dist/` com arquivos otimizados.

### Servir Build Localmente
```bash
npm run preview
```

### Deploy
- **Vercel**: Conecte o repositório Git - deploy automático
- **Netlify**: Faça upload da pasta `dist/`
- **GitHub Pages**: Configure workflows do GitHub Actions

## 🔗 Recursos Úteis

- [React Docs](https://react.dev)
- [Vite Docs](https://vitejs.dev)
- [MDN Web Docs](https://developer.mozilla.org)
- [CSS Tricks](https://css-tricks.com)

---

**Última atualização**: Novembro 2025
