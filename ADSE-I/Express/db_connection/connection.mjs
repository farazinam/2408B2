import { MongoClient, ServerApiVersion } from "mongodb";

// 1. Use your MongoDB Atlas connection string
const uri = "mongodb+srv://farazinam:123@ecommerce.hwuygsg.mongodb.net/";

// 2. Create the client with Stable API settings
const client = new MongoClient(uri, {
  serverApi: {
    version: ServerApiVersion.v1,
    strict: true,
    deprecationErrors: true,
  },
});

// 3. Create and export the database reference
export const database = await client.db("_2408B2");

// 4. Export the run function
export async function run() {
  try {
    // Connect to MongoDB Atlas
    await client.connect();

    // 5. Verify the connection
    await client.db("admin").command({ ping: 1 });

    console.log("Successfully connected to MongoDB Atlas!");
  } catch (e) {
    console.error("Error occurred:", e);
    await client.close();
  }
}

// 6. Run the function without .catch()
run();