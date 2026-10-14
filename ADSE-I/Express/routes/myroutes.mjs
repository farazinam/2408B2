import express from 'express'
import { AddProduct, Contact, Index } from "../controller/mycontroller.mjs";

const route = express.Router();

route.get('/', Index);
route.get('/contact', Contact);
route.post('/addproduct', AddProduct); //AddProduct

// app.get('/file', (req, res) => {
//   res.download('MockInterview_Task.docx')
// })

// app.get('/error', (req, res) => {
//   res.status(404).send('Page Not Found')
// })

// app.get('/jsondata', (req, res) => {
//   res.json({name: "Ali", age: 22, city: "Karachi"})
// })

// app.get('/github', (req, res) => {
//   res.redirect("https://github.com/farazinam")
// })

// app.get('/sendfile', (req, res) => {
//   res.sendFile(path.join(dirname, "abc.txt"))
// })

// app.get('/product/:id', (req, res) => {
//   const proId = req.params.id;
//   res.send(`Product ID is: ${proId}`)
// })

// app.get('/greet', (req, res) => {
//   const {author} = req.query;
//   res.send(`Author is: ${author}`)
// })

// app.post('/login', (req, res) => {
//   const {un, em, ps} = req.body;
//   res.send(`USERNAME is: ${un}, EMAIL is ${em}, and PASSWORD is ${ps}`)
// })

// app.use('/usefile', express.static(dirname, {index: 'index.html'}))

export default route;