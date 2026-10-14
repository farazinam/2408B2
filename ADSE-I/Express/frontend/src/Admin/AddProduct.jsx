import React, { useState } from 'react'
import axios from 'axios'

function AddProduct() {
    const [product, setProduct] = useState({
         pn: '',
         pp: '',
         pd: '',
    });

    const HandleChange = (e) => {
        setProduct({...product, [e.target.name]: e.target.value})
    }

    const HandleSubmit = async(e) => { //
        e.preventDefault();
        console.log(`Product Name: ${product.pn}, Product Price: ${product.pp}, Product Description: ${product.pd}`);

        console.log("Product Added");

        try{
            await axios.post('http://localhost:3000/addproduct', product);
            alert("Data Added");
            setProduct({pn: "", pp: "", pd: ""})
        }
        catch(error){
            console.log("Error Occured:", error);
        }
    }

  return (
    <div>
        <form onSubmit={HandleSubmit}>
            <label htmlFor="">Product Name</label>
            <input type="text" name='pn' onChange={HandleChange} /> <br />

            <label htmlFor="">Product Price</label>
            <input type="number" name='pp' onChange={HandleChange} /> <br />

            <label htmlFor="">Product Description</label>
            <input type="text" name='pd' onChange={HandleChange} /> <br />

            <button type="submit">Add Product</button>
        </form>
    </div>
  )
}

export default AddProduct