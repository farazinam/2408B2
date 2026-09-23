import { Route, Routes } from 'react-router-dom'
import './App.css'
import NavigationBar from './component/Header'
import Events from './hooks/events'
import UseEffectFn from './hooks/useEffect'
import UseRefFn from './hooks/useRef'
import USHook from './hooks/useState'
import HomePage from './webPage/HomePage'
import MaterialHome from './metrialui/HomePage'
import MUIGrid from './metrialui/Grid'
import Profile from './metrialui/Profile'
import Rabta from './metrialui/Contact'


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
    <Route path='/muihome' element={<MaterialHome />} />
    <Route path='/muigrid' element={<MUIGrid />} />
    <Route path='/profile' element={<Profile />} />
    <Route path='/contact' element={<Rabta />} />
  </Routes>

  </>
  )
}

export default App