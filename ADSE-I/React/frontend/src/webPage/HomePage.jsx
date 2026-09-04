import './HomePage.css'


function Header(){
  return ( <>
  <nav>
    <a href="">Home</a>
    <a href="">About</a>
    <a href="">Services</a>
    <a href="">Contact</a>
  </nav>
  </>
)
}

function Content({title, description, children}){
  return (
    <div style={{border: "2px solid gray", width: "25%"}}>
      <h3>{title}</h3>
      <p>{description}</p>
      {children}
    </div>
)
}

function Footer (){
  return <footer>
    All right reserved Copyright &copy; Aptech Limited!
  </footer>
}

function LoginStatus({isLoggedIn}){
  return <h3 style={{textAlign: "right"}}> {isLoggedIn ? "Faraz Inam" : "Please Log In"} </h3>
}

function HomePage (){
    return (
        <>
    <Header />

    <LoginStatus isLoggedIn={true} />

      <div style={{display: "flex"}}>
  <Content title="Watch" description="Smart Watch">
    <button>Add To Cart</button>
  </Content>
  <Content title="Perfume" description="EveryOne">
    <button>Add To Cart</button>
  </Content>
  </div>

    <Footer />
    </>
    )
}

export default HomePage;
