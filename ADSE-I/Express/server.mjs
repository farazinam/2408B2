import express from 'express';
const app = express()
const port = 3000

import path from 'path'
import route from './routes/myroutes.mjs';
const dirname = path.resolve();
import cors from 'cors'

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({extended: true}));

app.use(route);


app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})