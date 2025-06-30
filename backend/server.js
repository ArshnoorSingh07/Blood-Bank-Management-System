const express = require("express");
const cors = require("cors");
const app = express();
const donateRoute = require("./routes/donate");
const requestRoute = require("./routes/request");

app.use(cors());
app.use(express.json());

app.use("/api/donate", donateRoute);
app.use("/api/request", requestRoute);

app.listen(5000, () => console.log("Server running on http://localhost:5000"));

const donorRoute = require("./routes/donors"); 
app.use("/api/donors", donorRoute);
