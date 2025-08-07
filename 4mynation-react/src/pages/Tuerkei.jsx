// src/pages/Tuerkei.jsx
import React, { useState, useEffect } from 'react';
import './Tuerkei.css';

import bg from '../assets/images/bg-turkey.png';

export default function Tuerkei() {
  const [sprichwoerter, setSprichwoerter] = useState([]);
  const [ereignisse, setEreignisse] = useState([]);

  useEffect(() => {
    fetch('http://localhost:3001/sprichwoerter?land=TÜrkei')
      .then(res => res.json())
      .then(data => setSprichwoerter(data))
      .catch(err => console.error('Fehler beim Laden der Sprichwörter:', err));

    fetch('http://localhost:3001/ereignisse?land=TÜrkei')
      .then(res => res.json())
      .then(data => setEreignisse(data))
      .catch(err => console.error('Fehler beim Laden der Ereignisse:', err));
  }, []);

  return (
    <>
      {/* Hero-Bereich mit Vollbild-Hintergrund und überlagertem Text */}
      <section
        className="tuerkei-hero"
        style={{ backgroundImage: `url(${bg})` }}
      >
        <div className="tuerkei-hero-text">
          <h2>Willkommen auf deiner Türkei-Seite</h2>
          <p>
            Entdecke deine Wurzeln: Sprichwörter, historische Ereignisse, Filme, Stars,
            Speisen und Getränke aus der Türkei.
          </p>
        </div>
      </section>

      {/* Sprichwörter & Zitate */}
      <section className="tuerkei-section sprichwoerter">
        <h3>Sprichwörter & Zitate</h3>
        <ul>
          {sprichwoerter.map(item => (
            <li key={item.id} className="quote-item">
              <blockquote>“{item.spruch}”</blockquote>
              {item.bedeutung && <cite>{item.bedeutung}</cite>}
            </li>
          ))}
        </ul>
      </section>

      {/* Historische Ereignisse */}
      <section className="tuerkei-section ereignisse">
        <h3>Heute vor … Jahren</h3>
        <ul>
          {ereignisse.map(ev => (
            <li key={ev.id} className="event-item">
              <strong>{ev.jahr}</strong>: {ev.beschreibung}
            </li>
          ))}
        </ul>
      </section>

      {/* Platzhalter für weitere Module */}
      <section className="tuerkei-section filme">
        <h3>Filmtipp</h3>
        {/* TODO: Filme-Komponente */}
      </section>
      <section className="tuerkei-section stars">
        <h3>Berühmte türkische Stars</h3>
        {/* TODO: Stars-Komponente */}
      </section>
      <section className="tuerkei-section speisen">
        <h3>Landestypische Speisen</h3>
        {/* TODO: Speisen-Komponente */}
      </section>
      <section className="tuerkei-section getraenke">
        <h3>Typische Getränke</h3>
        {/* TODO: Getränke-Komponente */}
      </section>
    </>
  );
}
