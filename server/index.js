// server/index.js

const express = require("express");
const cors = require("cors");
const mysql = require("mysql2/promise");  // promise-API

const app = express();
const PORT = 3001;

// Middleware: CORS und JSON-Parsing
app.use(cors());
app.use(express.json());

// 📂 Statische Bilder (falls du Flaggen etc. unter server/public/images ablegst)
// const path = require("path");
// app.use("/images", express.static(path.join(__dirname, "public/images")));

// 🛠 Test-Route
app.get("/", (req, res) => {
  res.send("4MyNation Backend läuft");
});

// 🔍 Route: GET /laender
app.get("/laender", async (req, res) => {
  try {
    // Hier deine DB-Zugangsdaten anpassen
    const pool = mysql.createPool({
      host: "localhost",
      user: "root",
      password: "",       // Dein MySQL-Passwort
      database: "4mynation",
    });

    const [rows] = await pool.query("SELECT * FROM laender");
    res.json(rows);
  } catch (err) {
    console.error("Fehler bei /laender:", err);
    res.status(500).json({ error: "Fehler beim Abrufen der Länder" });
  }
});

// 🔥 Server starten
app.listen(PORT, () => {
  console.log(`Server läuft auf http://localhost:${PORT}`);
});

