import { ObjectId } from "mongodb"
import { database } from "../db_connection/connection.mjs"

export const Index = (req, res) => {
  res.send('Hello World Aptech!')
}

export const Contact = (req, res) => {
  res.send('This is CONTACT Page!')
}

//Add Pruduct
export const AddProduct = async (req, res) => {
  try{
    const {pn, pp, pd} = req.body;
    await database.collection("product").insertOne({
      ProductName: pn,
      ProductPrice: pp,
      ProductDescription: pd
    });
    console.log("Data Added");
  }
  catch(e){
    console.log("Error: ", e);
    res.status(500).send("Error Inserting Data");
  }
}


//View Product
export const ViewProduct = async (req, res) => {
  try{
    const getdata = await database.collection("product").find({}).toArray();
    res.json(getdata);
    console.log("Data Fetch");
  }
  catch(e){
    console.log("Error: ", e);
    res.status(500).send("Error Fetching Data");
  }
}


//Delete Product
export const DeleteProduct = async (req, res) => {
  try{
    const id = req.params;
    await database.collection("product").deleteOne({
      _id: new ObjectId(id)
    });
    console.log("Record Deleted");
  }
  catch(e){
    console.log("Error: ", e);
    res.status(500).send("Error Fetching Data");
  }
}


//Edit Product
export const ViewProductById = async (req, res) => {
  try{
    const id = req.params.id;
    const result = await database.collection("product").findOne({
      _id: new ObjectId(id)
    });
    res.json(result);
    console.log("Data Fetch");
  }
  catch(e){
    console.log("Error: ", e);
    res.status(500).send("Error Fetching Data");
  }
}

//Update Product
export const UpdateProduct = async (req, res) => {
  try{
    const id = req.params.id;
    const {pn, pp, pd} = req.body;
    const result = await database.collection("product").updateOne(
      {_id: new ObjectId(id)},
    {$set: {
      ProductName: pn,
      ProductPrice: pp,
      ProductDescription: pd,
    }});
    console.log(result);
    console.log("Data Update");
  }
  catch(e){
    console.log("Error: ", e);
    res.status(500).send("Error Fetching Data");
  }
}