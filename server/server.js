// server.js
import express from 'express';
import mysql from 'mysql2/promise';
import cors from 'cors';

const app = express();
app.use(cors());

const db = await mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: '4mynation'
});

// Route: Sprichwörter
app.get('/sprichwoerter', async (req, res) => {
  const { land } = req.query;
  try {
    const [rows] = await db.execute(
      'SELECT id, spruch, bedeutung FROM sprichwoerter WHERE land = ? ORDER BY id DESC',
      [land]
    );
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Fehler beim Laden der Sprichwörter' });
  }
});

// Route: Ereignisse
app.get('/ereignisse', async (req, res) => {
  const { land } = req.query;
  try {
    const today = new Date();
    const month = today.getMonth() + 1; // JS zählt 0-11
    const day = today.getDate();

    const [rows] = await db.execute(
      'SELECT id, jahr, beschreibung FROM ereignisse WHERE land = ? AND MONTH(datum) = ? AND DAY(datum) = ? ORDER BY jahr ASC',
      [land, month, day]
    );
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Fehler beim Laden der Ereignisse' });
  }
});

app.listen(3001, () => console.log('Backend läuft auf Port 3001'));
