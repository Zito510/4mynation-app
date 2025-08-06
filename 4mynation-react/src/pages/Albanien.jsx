import React, { useState, useEffect } from 'react';
import './Albanien.css';
import flag from '../assets/images/albanien.png';
import bg from '../assets/images/bg-red.png';

export default function Albanien() {
  const [sprichwoerter, setSprichwoerter] = useState([]);
  const [ereignisse, setEreignisse] = useState([]);

  useEffect(() => {
    fetch('http://localhost:3001/sprichwoerter?land=Albanien')
      .then(res => res.json())
      .then(data => setSprichwoerter(data))
      .catch(err => console.error('Fehler beim Laden der Sprichwörter:', err));

    fetch('http://localhost:3001/ereignisse?land=Albanien')
      .then(res => res.json())
      .then(data => setEreignisse(data))
      .catch(err => console.error('Fehler beim Laden der Ereignisse:', err));

    // TODO: Weitere Daten laden (Filme, Stars, Speisen, Getränke)
  }, []);

  return (
    <div className="albanien-page">
      {/* Hero-Bereich mit Vollbild-Hintergrund */}
      <section
        className="albanien-hero"
        style={{ backgroundImage: `url(${bg})` }}
      >
        <img src={flag} alt="Flagge Albanien" className="albanien-flag" />
      </section>

      {/* Begrüßungstext */}
      <section className="albanien-welcome">
        <h2>Willkommen auf deiner Albanien‐Seite</h2>
        <p>
          Entdecke deine Wurzeln: Sprichwörter, historische Ereignisse, Filme, Stars,
          Speisen und Getränke aus Albanien.
        </p>
      </section>

      {/* Sprichwörter & Zitate */}
      <section className="albanien-section sprichwoerter">
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
      <section className="albanien-section ereignisse">
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
      <section className="albanien-section filme">
        <h3>Filmtipp</h3>
        {/* TODO: Filme‐Komponente */}
      </section>
      <section className="albanien-section stars">
        <h3>Berühmte albanische Stars</h3>
        {/* TODO: Stars‐Komponente */}
      </section>
      <section className="albanien-section speisen">
        <h3>Landestypische Speisen</h3>
        {/* TODO: Speisen‐Komponente */}
      </section>
      <section className="albanien-section getraenke">
        <h3>Typische Getränke</h3>
        {/* TODO: Getränke‐Komponente */}
      </section>
    </div>
  );
}
