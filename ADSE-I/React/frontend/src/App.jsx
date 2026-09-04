import './App.css'
import Events from './hooks/events'
import Counter from './hooks/useState'
import HomePage from './webPage/HomePage'


// function Properties(props){
//   return <h2> Welcome to {props.name} </h2>
// }

// function Age({age, city}){
//   return <h3 style={{color: "white", backgroundColor: "black"}}> Age is {age} years and City is {city} </h3>
// }


function App(){
    // const name = "Faraz Inam"; 
  return (
  <>
  {/* <h1> Hello world!</h1> 
  <p> React </p>
  <a href="">Aptech</a>
  <p>My Name is {name}</p> */}

  {/* <Properties name="Aptech North Nazimabad" />

  <Age age={24} city="Karachi" /> */}
  
  <HomePage />

  <hr />

  <Counter />

  <Events />

  </>
  )
}

export default App