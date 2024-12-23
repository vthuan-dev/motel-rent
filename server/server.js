import express from "express";
require("dotenv").config();
import cors from "cors";
import initRoutes from "./src/routes";
import connectDatabase from "./src/config/connectDB";

const app = express();
app.use(
  cors({
    origin: 'http://localhost:3000',
    methods: ["POST", "GET", "PUT", "DELETE"],
    credentials: true
  })
);
app.use(express.json({ limit: "10mb" }));
app.use(express.urlencoded({ extended: true, limit: "10mb" }));

app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ 
    error: err.message || 'Internal Server Error',
    stack: process.env.NODE_ENV === 'development' ? err.stack : undefined
  });
});

initRoutes(app);
connectDatabase();

const port = process.env.PORT || 5000;
const listener = app.listen(port, () => {
  console.log(`Server is running on the port ${listener.address().port}`);
});
