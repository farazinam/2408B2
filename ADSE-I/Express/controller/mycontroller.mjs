import { database } from "../db_connection/connection.mjs"
// import { database } from "../db_connection/abc.mjs"

export const Index = (req, res) => {
  res.send('Hello World Aptech!')
}

export const Contact = (req, res) => {
  res.send('This is CONTACT Page!')
}

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