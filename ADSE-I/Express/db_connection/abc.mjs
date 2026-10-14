import { MongoClient } from "mongodb";

const username = encodeURIComponent("farazinam");
const password = encodeURIComponent("123");
const cluster = "eCommerce";
// const authSource = "<authSource>";
// const authMechanism = "<authMechanism>";

let uri =
//   `mongodb+srv://${username}:${password}@${cluster}/?authSource=${authSource}&authMechanism=${authMechanism}`;
  `mongodb+srv://${username}:${password}@${cluster}`;

const client = new MongoClient(uri);

export const database = client.db("_2408B2");
async function run() {
  try {
    await client.connect();

    const ratings = database.collection("product");

    const cursor = ratings.find();

    await cursor.forEach(doc => console.dir(doc));
  } finally {
    await client.close();
  }
}
run().catch(console.dir);

