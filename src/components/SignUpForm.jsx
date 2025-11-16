import { useState } from 'react'

function SignUpForm() {
  const [formData, setFormData] = useState({
    nome: '',
    email: '',
    senha: ''
  })

  const [showPassword, setShowPassword] = useState(false)

  const handleChange = (e) => {
    const { name, value } = e.target
    setFormData(prev => ({
      ...prev,
      [name]: value
    }))
  }

  const handleSubmit = (e) => {
    e.preventDefault()
    console.log('Dados do formulário:', formData)
  }

  return (
    <section className="right-section">
      <div className="form-container">
        <h2 className="form-title">Comece agora grátis</h2>
        <p className="form-subtitle">Crie sua conta e make the change...</p>

        <form onSubmit={handleSubmit} className="form">
          <div className="form-group">
            <label htmlFor="nome" className="form-label">
              <span className="label-icon">👤</span>
              Nome completo
            </label>
            <input
              type="text"
              id="nome"
              name="nome"
              value={formData.nome}
              onChange={handleChange}
              placeholder="Digite seu nome completo"
              className="form-input"
              required
            />
          </div>

          <div className="form-group">
            <label htmlFor="email" className="form-label">
              <span className="label-icon">✉️</span>
              E-mail
            </label>
            <input
              type="email"
              id="email"
              name="email"
              value={formData.email}
              onChange={handleChange}
              placeholder="seu.email@exemplo.com"
              className="form-input"
              required
            />
          </div>

          <div className="form-group">
            <label htmlFor="senha" className="form-label">
              <span className="label-icon">🔒</span>
              Senha
            </label>
            <div className="password-input-wrapper">
              <input
                type={showPassword ? 'text' : 'password'}
                id="senha"
                name="senha"
                value={formData.senha}
                onChange={handleChange}
                placeholder="Digite uma senha segura"
                className="form-input"
                required
              />
              <button
                type="button"
                className="toggle-password"
                onClick={() => setShowPassword(!showPassword)}
              >
                {showPassword ? '👁️' : '👁️‍🗨️'}
              </button>
            </div>
          </div>

          <button type="submit" className="submit-btn">
            Criar minha conta
          </button>
        </form>

        <div className="form-footer">
          <p className="disclaimer">
            Ao clicar em "criar minha conta grátis", declaro que aceito as Políticas de Privacidade e os Termos de Uso da DIO.
          </p>
          <p className="login-link">
            Já tenho conta. <a href="#login">Fazer login</a>
          </p>
        </div>
      </div>
    </section>
  )
}

export default SignUpForm
