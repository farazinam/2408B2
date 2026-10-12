import React from 'react'
import Navbar from './Component/Navbar'
import { Route, Routes } from 'react-router-dom'
import Index from './Admin/Index'
import AddProduct from './Admin/AddProduct'

function App() {
  return (
    <>
    <Navbar />
    <br />

    <Routes>
      <Route path='/' element={<Index />} />
      <Route path='/product' element={<AddProduct />} />
    </Routes>
    </>
  )
}

export default App