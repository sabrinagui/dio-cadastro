import Navbar from './components/Navbar'
import HeroSection from './components/HeroSection'
import SignUpForm from './components/SignUpForm'
import './App.css'

function App() {
  return (
    <div className="container">
      <Navbar />
      <main className="main-content">
        <div className="content-wrapper">
          <HeroSection />
          <SignUpForm />
        </div>
      </main>
    </div>
  )
}

export default App
