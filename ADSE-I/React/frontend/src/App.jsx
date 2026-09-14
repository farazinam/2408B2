import { Route, Routes } from 'react-router-dom'
import './App.css'
import NavigationBar from './component/Header'
import Events from './hooks/events'
import UseEffectFn from './hooks/useEffect'
import UseRefFn from './hooks/useRef'
import USHook from './hooks/useState'
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
  
  {/* <HomePage /> */}

  {/* <hr /> */}

  {/* <USHook /> */}
  {/* <UseEffectFn /> */}

  {/* <UseRefFn /> */}

  {/* <Events /> */}

  <NavigationBar />

  <Routes>
    <Route path='/' element={<HomePage/>} />
    <Route path='/event' element={<Events />} />
    <Route path='/usestate' element={<USHook />} />
    <Route path='/useeffect' element={<UseEffectFn />} />
    <Route path='/useref' element={<UseRefFn />} />
  </Routes>

  </>
  )
}

export default App