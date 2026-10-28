import React from 'react'
import Navbar from './Component/Navbar'
import { Route, Routes } from 'react-router-dom'
import Index from './Admin/Index'
import AddProduct from './Admin/AddProduct'
import ViewProduct from './Admin/ViewProduct'
import UpdateProduct from './Admin/UpdateProduct'

function App() {
  return (
    <>
    <Navbar />
    <br />

    <Routes>
      <Route path='/' element={<Index />} />
      <Route path='/product' element={<AddProduct />} />
      <Route path='/viewproduct' element={<ViewProduct />} />
      <Route path='/update' element={<UpdateProduct />} />
    </Routes>
    </>
  )
}

export default App