import React from 'react'
import { NavLink } from 'react-router-dom'

function Navbar() {
  return (
    <nav>
        <NavLink to='/'> Home </NavLink>
        <NavLink to='/product'> Add Product </NavLink>
        <NavLink to='/viewproduct'> View Product </NavLink>
    </nav>
  )
}

export default Navbar