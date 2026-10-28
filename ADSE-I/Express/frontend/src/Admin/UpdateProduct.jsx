import React, { useState } from 'react'
import axios from 'axios'
import { useLocation } from 'react-router-dom';
import { useEffect } from 'react';

function UpdateProduct() {
   const location = useLocation();
   const id = location.state?._id;
   console.log(`id is ${id}`);

    const [product, setProduct] = useState({
         pn: '',
         pp: '',
         pd: '',
    });

    const GetProduct = async() =>{
        try{
            const response = await axios.get(`http://localhost:3000/product/${id}`);
            const data = response.data;
            setProduct({
                pn: data.ProductName,
                pp: data.ProductPrice,
                pd: data.ProductDescription,
            });
            // console.log("Product Fetched: ", data);          
        }
        catch(e){
            console.log("Error Occured: ", e);
            
        }
    }

    useEffect(() => {
        GetProduct()
    }, [])

    const HandleChange = (e) => {
        setProduct({...product, [e.target.name]: e.target.value})
    }

    const HandleSubmit = async(e) => { //
        e.preventDefault();
        console.log(`Product Name: ${product.pn}, Product Price: ${product.pp}, Product Description: ${product.pd}`);
        console.log("Product Updated");

        try{
            await axios.put(`http://localhost:3000/product/${id}`, 
                {pn: product.pn, pp: product.pp, pd: product.pd}
            );
            alert("Data Updated");
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
            <input type="text" name='pn' onChange={HandleChange} value={product.pn} /> <br />

            <label htmlFor="">Product Price</label>
            <input type="number" name='pp' onChange={HandleChange} value={product.pp} /> <br />

            <label htmlFor="">Product Description</label>
            <input type="text" name='pd' onChange={HandleChange} value={product.pd} /> <br />

            <button type="submit">Update Product</button>
        </form>
    </div>
  )
}

export default UpdateProduct