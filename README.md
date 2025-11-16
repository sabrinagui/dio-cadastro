# DIO - Plataforma de Cadastro

Uma página moderna e responsiva de cadastro desenvolvida com React + Vite, apresentando um design elegante com Glassmorphism e animações suaves.

## 📸 Preview

![DIO Cadastro Preview](./screenshot.png)

## 🎨 Características

- **Design Moderno**: Interface limpa e profissional com gradientes e efeitos visuais sofisticados
- **Responsivo**: Totalmente adaptável para mobile, tablet e desktop
- **Glassmorphism**: Efeito de vidro com backdrop blur para uma estética moderna
- **Validação de Formulário**: Validação HTML5 nativa dos campos
- **Toggle de Senha**: Funcionalidade para mostrar/esconder a senha digitada
- **Animações Suaves**: Transições CSS3 fluidas em todos os elementos interativos
- **Acessibilidade**: Estrutura semântica HTML com labels associados aos inputs

## 🚀 Tecnologias Utilizadas

- **React 19.2.0** - Biblioteca JavaScript para UI
- **Vite 7.2.2** - Build tool e dev server de próxima geração
- **CSS3** - Estilos modernos com Grid, Flexbox e animações
- **JavaScript ES6+** - Código moderno e limpo

## 📁 Estrutura do Projeto

```
DIO-CADASTRO/
├── src/
│   ├── App.jsx          # Componente principal com lógica do formulário
│   ├── App.css          # Estilos da aplicação
│   ├── main.jsx         # Ponto de entrada da aplicação
│   ├── index.css        # Estilos globais
│   └── assets/          # Arquivos estáticos
├── public/              # Arquivos públicos
├── index.html           # HTML principal
├── vite.config.js       # Configuração do Vite
├── package.json         # Dependências do projeto
└── README.md            # Este arquivo
```

## 🛠️ Instalação e Configuração

### Pré-requisitos
- Node.js (v14 ou superior)
- npm ou yarn

### Passos para Instalar

1. Clone o repositório ou navegue até a pasta do projeto:
```bash
cd DIO-CADASTRO
```

2. Instale as dependências:
```bash
npm install
```

3. Inicie o servidor de desenvolvimento:
```bash
npm run dev
```

4. Abra seu navegador e acesse:
```
http://localhost:5174
```

## 📝 Scripts Disponíveis

### Development
```bash
npm run dev
```
Inicia o servidor de desenvolvimento com hot module replacement (HMR).

### Build
```bash
npm run build
```
Cria a versão otimizada para produção na pasta `dist/`.

### Preview
```bash
npm run preview
```
Visualiza a versão de produção localmente antes de fazer deploy.

### Lint
```bash
npm run lint
```
Verifica a qualidade do código com ESLint.

## 🎯 Funcionalidades

### Componentes da Página

#### Navbar
- Logo com gradiente roxo-rosa
- Botões de navegação (Home, Entrar, Cadastrar)
- Efeito hover e estado ativo nos botões
- Backdrop blur para efeito moderno

#### Seção Esquerda
- Título principal com descrição da plataforma
- Tipografia grande e legível
- Responsiva em diferentes breakpoints

#### Formulário de Cadastro
- **Campo Nome Completo**: Validação de texto obrigatório
- **Campo E-mail**: Validação de email nativa
- **Campo Senha**: Input com toggle para mostrar/esconder
  - Ícone de olho interativo
  - Feedback visual ao clicar
- **Botão Submeter**: Gradiente rosa com efeito elevação no hover
- **Disclaimer**: Texto informativo sobre políticas de privacidade
- **Link de Login**: Para usuários que já possuem conta

## 🎨 Paleta de Cores

| Cor | Valor | Uso |
|-----|-------|-----|
| Fundo Escuro | `#1a1626` | Background principal |
| Roxo | `#a855f7` | Gradientes e borders |
| Rosa | `#ec4899` | Botões e destaques |
| Texto | `#fff` | Texto principal |
| Texto Secundário | `#b0b0b0` | Labels e subtítulos |

## 📱 Breakpoints Responsivos

- **Desktop**: 1024px+
- **Tablet**: 768px - 1023px
- **Mobile**: < 768px
- **Small Mobile**: < 480px

## 🔧 Customização

### Alterar Cores

Edite as variáveis de cor no arquivo `App.css`:

```css
background: linear-gradient(135deg, #1a1626 0%, #1e1a2e 100%);
background: linear-gradient(135deg, #a855f7 0%, #ec4899 100%);
```

### Modificar Conteúdo

Edite os textos e labels diretamente no arquivo `App.jsx`:

```jsx
<h2 className="form-title">Seu novo título aqui</h2>
```

### Ajustar Espaçamento

Modifique as propriedades de padding e margin no `App.css`:

```css
.form-container {
  padding: 3rem;
}
```

## 📊 Tratamento de Formulário

O componente utiliza `useState` para gerenciar o estado do formulário:

```jsx
const [formData, setFormData] = useState({
  nome: '',
  email: '',
  senha: ''
})
```

Ao submeter, os dados são capturados e podem ser processados conforme necessário.

## ✨ Efeitos Visuais

### Glassmorphism
Utiliza `backdrop-filter: blur()` para criar o efeito de vidro fosco:

```css
.form-container {
  backdrop-filter: blur(20px);
  border: 1px solid rgba(168, 85, 247, 0.2);
}
```

### Transições Suaves
Todos os elementos interativos possuem transições CSS suaves:

```css
transition: all 0.3s ease;
```

### Sombras Sofisticadas
Box shadows para profundidade:

```css
box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4);
```

## 🚀 Deploy

### Vercel
1. Push o código para um repositório Git
2. Conecte o repositório no [Vercel](https://vercel.com)
3. Vercel detectará automaticamente que é um projeto Vite
4. Seu site estará online em segundos!

### Netlify
1. Build o projeto: `npm run build`
2. Faça upload da pasta `dist/` para [Netlify](https://netlify.com)

### GitHub Pages
Configure o vite.config.js com a base correta e faça deploy via GitHub Actions.

## 🐛 Troubleshooting

### Porta 5174 já está em uso
O Vite automaticamente tenta a próxima porta disponível. Você pode especificar uma porta:

```bash
npm run dev -- --port 3000
```

### Módulos não encontrados
Reinstale as dependências:

```bash
rm -rf node_modules package-lock.json
npm install
```

### Problemas de Hot Reload
Limpe o cache do navegador (Ctrl+Shift+Delete) ou use uma aba anônima.

## 📄 Licença

Este projeto é de código aberto e pode ser usado livremente.

## 👨‍💻 Desenvolvedor

Desenvolvido como projeto de aprendizado em React e desenvolvimento web moderno.

---

**Versão**: 1.0.0  
**Última Atualização**: Novembro 2025  
**Status**: ✅ Pronto para Produção
