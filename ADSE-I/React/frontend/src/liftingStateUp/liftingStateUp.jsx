import React, { useState } from 'react'
import ChildA from './childA';
import ChildB from './childB';

function LiftingStateUp() {
const [name, setName] = useState("");

  return (
    <>
    <ChildA setName={setName}/>
    <ChildB name={name}/>
    </>
  )
}

export default LiftingStateUp