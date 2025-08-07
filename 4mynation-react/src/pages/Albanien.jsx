// src/pages/Albanien.jsx
import React, { useState, useEffect } from 'react';
import './Albanien.css';
import bg from '../assets/images/bg-red.png';

export default function Albanien() {
  // 1) States für alle Daten
  const [sprichwoerter, setSprichwoerter] = useState([]);
  const [ereignisse, setEreignisse]     = useState([]);
  const [filme, setFilme]               = useState([]);
  const [stars, setStars]               = useState([]);
  const [speisen, setSpeisen]           = useState([]);
  const [getraenke, setGetraenke]       = useState([]);

  // 2) useEffect: alle Endpunkte abfragen
  useEffect(() => {
    fetch('http://localhost:3001/sprichwoerter?land=Albanien')
      .then(r => r.json()).then(setSprichwoerter);
    fetch('http://localhost:3001/ereignisse?land=Albanien')
      .then(r => r.json()).then(setEreignisse);
    fetch('http://localhost:3001/filme?land=Albanien')
      .then(r => r.json()).then(setFilme);
    fetch('http://localhost:3001/stars?land=Albanien')
      .then(r => r.json()).then(setStars);
    fetch('http://localhost:3001/speisen?land=Albanien')
      .then(r => r.json()).then(setSpeisen);
    fetch('http://localhost:3001/getraenke?land=Albanien')
      .then(r => r.json()).then(setGetraenke);
  }, []);

  return (
    <>
      {/* Hero-Bereich */}
      <section className="albanien-hero" style={{ backgroundImage:`url(${bg})` }}>
        <div className="albanien-hero-text">
          <h2>Willkommen auf deiner Albanien-Seite</h2>
          <p>Entdecke Sprichwörter, Ereignisse, Filme, Stars, Speisen & Getränke.</p>
        </div>
      </section>

      {/* Sprichwörter */}
      <section className="albanien-section sprichwoerter">
        <h3>Sprichwörter & Zitate</h3>
        <ul>
          {sprichwoerter.map(({id, spruch, bedeutung}) =>
            <li key={id} className="quote-item">
              <blockquote>“{spruch}”</blockquote>
              {bedeutung && <cite>{bedeutung}</cite>}
            </li>
          )}
        </ul>
      </section>

      {/* Historische Ereignisse */}
      <section className="albanien-section ereignisse">
        <h3>Heute vor … Jahren</h3>
        <ul>
          {ereignisse.map(({id, jahr, beschreibung}) =>
            <li key={id} className="event-item">
              <strong>{jahr}</strong>: {beschreibung}
            </li>
          )}
        </ul>
      </section>

      {/* Filme */}
      <section className="albanien-section filme">
        <h3>Filmtipp</h3>
        <ul>
          {filme.map(({id, titel, jahr, beschreibung}) =>
            <li key={id} className="media-item">
              <strong>{titel} ({jahr})</strong><br/>
              {beschreibung}
            </li>
          )}
        </ul>
      </section>

      {/* Stars */}
      <section className="albanien-section stars">
        <h3>Berühmte albanische Stars</h3>
        <ul>
          {stars.map(({id, name, beschreibung}) =>
            <li key={id} className="media-item">
              <strong>{name}</strong><br/>
              {beschreibung}
            </li>
          )}
        </ul>
      </section>

      {/* Speisen */}
      <section className="albanien-section speisen">
        <h3>Landestypische Speisen</h3>
        <ul>
          {speisen.map(({id, name, beschreibung}) =>
            <li key={id} className="media-item">
              <strong>{name}</strong><br/>
              {beschreibung}
            </li>
          )}
        </ul>
      </section>

      {/* Getränke */}
      <section className="albanien-section getraenke">
        <h3>Typische Getränke</h3>
        <ul>
          {getraenke.map(({id, name, beschreibung}) =>
            <li key={id} className="media-item">
              <strong>{name}</strong><br/>
              {beschreibung}
            </li>
          )}
        </ul>
      </section>
    </>
  );
}
