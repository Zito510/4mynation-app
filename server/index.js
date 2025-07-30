const express = require("express");
const cors = require("cors");
const mysql = require("mysql2");

const app = express();
const PORT = 3001;

// Middleware
app.use(cors());
app.use(express.json());

// Test-Route
app.get("/", (req, res) => {
  res.send("4MyNation Backend läuft");
});

// Server starten
app.listen(PORT, () => {
  console.log(`Server läuft auf http://localhost:${PORT}`);
});
