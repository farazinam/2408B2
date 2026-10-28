import React, { useEffect, useState } from 'react'
import axios from 'axios'
import './ViewProduct.css'
import { useNavigate } from 'react-router-dom';

function ViewProduct() {
    const [product, setProduct] = useState([]);
    const navigate = useNavigate();

    const HandleDelete = (id) => {
        try{
            axios.delete(`http://localhost:3000/product/${id}`);
            console.log("Product Deleted");  
            setProduct(product.filter(z => z._id !== id));         
        }
        catch(e){
            console.log("Error Occured:", e);
            
        }
    }

    const HandleEdit = (id) => {
        navigate('/update', {state: {_id: id}})
    }


    const FetchProduct = async(e) => { 
        try{
            const getData = await axios.get('http://localhost:3000/getproduct');
            const records = getData.data;
            setProduct(records);
        }
        catch(error){
            console.log("Error Occured:", error);
        }
    }

    useEffect(() => {
        FetchProduct();
    }, []);

  return (
  <table border="1">
    <thead>
        <tr>
        <th>Prodcut ID</th>
        <th>Prodcut Name</th>
        <th>Prodcut Price</th>
        <th>Prodcut Description</th>
        <th>Actions</th>
        </tr>
    </thead>

    <tbody>
        {
            product.map(p => (
                <tr key={p._id}>
                    <td> {p._id} </td>
                    <td> {p.ProductName} </td>
                    <td> {p.ProductPrice} </td>
                    <td> {p.ProductDescription} </td>
                    <td>
                        <button onClick={() => HandleDelete(p._id)}>Delete</button>
                        <button onClick={() => HandleEdit(p._id)}>Edit</button>
                    </td>
                </tr>
            ))
        }
    </tbody>
  </table>
  )
}

export default ViewProduct