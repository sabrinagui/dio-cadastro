function Navbar() {
  return (
    <nav className="navbar">
      <div className="nav-content">
        <div className="logo">
          <span className="logo-text">DIO</span>
        </div>
        <div className="nav-links">
          <button className="nav-btn">Home</button>
          <button className="nav-btn">Entrar</button>
          <button className="nav-btn active">Cadastrar</button>
        </div>
      </div>
    </nav>
  )
}

export default Navbar
