import React, { useState } from 'react'

function ChildA({setName}) {
    
    const HandleChange = (e) => {
    setName(e.target.value);
    }

  return (
    <input type="text"
    onChange={HandleChange} />
  )
}

export default ChildA