import express from 'express';
const app = express()
const port = 3000

import path from 'path'
const dirname = path.resolve();

app.use(express.json());
app.use(express.urlencoded({extended: true}));


app.get('/', (req, res) => {
  res.send('Hello World Aptech!')
})

app.get('/contact', (req, res) => {
  res.send('This is Contact!')
})

app.get('/file', (req, res) => {
  res.download('MockInterview_Task.docx')
})

app.get('/error', (req, res) => {
  res.status(404).send('Page Not Found')
})

app.get('/jsondata', (req, res) => {
  res.json({name: "Ali", age: 22, city: "Karachi"})
})

app.get('/github', (req, res) => {
  res.redirect("https://github.com/farazinam")
})

app.get('/sendfile', (req, res) => {
  res.sendFile(path.join(dirname, "abc.txt"))
})

app.get('/product/:id', (req, res) => {
  const proId = req.params.id;
  res.send(`Product ID is: ${proId}`)
})

app.get('/greet', (req, res) => {
  const {author} = req.query;
  res.send(`Author is: ${author}`)
})

app.post('/login', (req, res) => {
  const {un, em, ps} = req.body;
  res.send(`USERNAME is: ${un}, EMAIL is ${em}, and PASSWORD is ${ps}`)
})

app.use('/usefile', express.static(dirname, {index: 'index.html'}))

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})