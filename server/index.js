// server/index.js  (ESM)
import express from "express";
import cors from "cors";
import mysql from "mysql2/promise";

const app = express();
const PORT = 3001;

// CORS & JSON
app.use(cors());
app.use(express.json());

// DB-Pool
const pool = mysql.createPool({
  host, user, password, database,
  waitForConnections: true,
  connectionLimit: 10,
  charset: 'utf8mb4'        // <- wichtig
});

// einmalig nach Pool/Connection:
await pool.query("SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci");

// Direkt nach dem Pool:
pool.query("SET NAMES utf8mb4");


// kleine Hilfsfunktion: DB-Query
async function q(sql, params = []) {
  const [rows] = await pool.query(sql, params);
  return rows;
}

// Test
app.get("/", (_req, res) => {
  res.send("4MyNation Backend läuft ✅");
});

// Länder
app.get("/laender", async (_req, res) => {
  try {
    const rows = await q(`
      SELECT id, name, beschreibung, flagge_url
      FROM laender
      ORDER BY name
    `);
    res.json(rows);
  } catch (e) {
    console.error(e);
    res.status(500).json({ error: "Fehler beim Abrufen der Länder" });
  }
});

// Sprichwörter
app.get("/sprichwoerter", async (req, res) => {
  const land = req.query.land;
  if (!land) return res.status(400).json({ error: "Kein Land angegeben" });
  try {
    const rows = await q(`
      SELECT s.id, s.spruch, s.bedeutung
      FROM sprichwoerter s
      JOIN laender l ON s.laender_id = l.id
      WHERE l.name = ?
      ORDER BY s.id
    `, [land]);
    res.json(rows);
  } catch (e) {
    console.error(e);
    res.status(500).json({ error: "Fehler beim Abrufen der Sprichwörter" });
  }
});

// Ereignisse
app.get("/ereignisse", async (req, res) => {
  const land = req.query.land;
  if (!land) return res.status(400).json({ error: "Kein Land angegeben" });
  try {
    const rows = await q(`
      SELECT e.id, e.titel, e.jahr, e.beschreibung
      FROM ereignisse e
      JOIN laender l ON e.laender_id = l.id
      WHERE l.name = ?
      ORDER BY e.jahr ASC
    `, [land]);
    res.json(rows);
  } catch (e) {
    console.error(e);
    res.status(500).json({ error: "Fehler beim Abrufen der Ereignisse" });
  }
});

// Filme
app.get("/filme", async (req, res) => {
  const land = req.query.land;
  if (!land) return res.status(400).json({ error: "Kein Land angegeben" });
  try {
    const rows = await q(`
      SELECT f.id, f.titel, f.jahr, f.beschreibung
      FROM filme f
      JOIN laender l ON f.laender_id = l.id
      WHERE l.name = ?
      ORDER BY f.jahr ASC
    `, [land]);
    res.json(rows);
  } catch (e) {
    console.error(e);
    res.status(500).json({ error: "Fehler beim Abrufen der Filme" });
  }
});

// Stars
app.get("/stars", async (req, res) => {
  const land = req.query.land;
  if (!land) return res.status(400).json({ error: "Kein Land angegeben" });
  try {
    const rows = await q(`
      SELECT s.id, s.name, s.beschreibung
      FROM stars s
      JOIN laender l ON s.laender_id = l.id
      WHERE l.name = ?
      ORDER BY s.name ASC
    `, [land]);
    res.json(rows);
  } catch (e) {
    console.error(e);
    res.status(500).json({ error: "Fehler beim Abrufen der Stars" });
  }
});

// Speisen
app.get("/speisen", async (req, res) => {
  const land = req.query.land;
  if (!land) return res.status(400).json({ error: "Kein Land angegeben" });
  try {
    const rows = await q(`
      SELECT s.id, s.name, s.beschreibung
      FROM speisen s
      JOIN laender l ON s.laender_id = l.id
      WHERE l.name = ?
      ORDER BY s.name ASC
    `, [land]);
    res.json(rows);
  } catch (e) {
    console.error(e);
    res.status(500).json({ error: "Fehler beim Abrufen der Speisen" });
  }
});

// Getränke
app.get("/getraenke", async (req, res) => {
  const land = req.query.land;
  if (!land) return res.status(400).json({ error: "Kein Land angegeben" });
  try {
    const rows = await q(`
      SELECT g.id, g.name, g.beschreibung
      FROM getraenke g
      JOIN laender l ON g.laender_id = l.id
      WHERE l.name = ?
      ORDER BY g.name ASC
    `, [land]);
    res.json(rows);
  } catch (e) {
    console.error(e);
    res.status(500).json({ error: "Fehler beim Abrufen der Getränke" });
  }
});

app.listen(PORT, () => {
  console.log(`Server läuft auf http://localhost:${PORT}`);
});
