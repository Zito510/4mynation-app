// src/pages/Albanien.jsx
import React, { useState, useEffect } from 'react';
import './Albanien.css';
import bg from '../assets/images/bg-red.png';

export default function Albanien() {
  // Daten
  const [sprichwoerter, setSprichwoerter] = useState([]);
  const [ereignisse,    setEreignisse]    = useState([]);
  const [filme,         setFilme]         = useState([]);
  const [stars,         setStars]         = useState([]);
  const [speisen,       setSpeisen]       = useState([]);
  const [getraenke,     setGetraenke]     = useState([]);

  // Indizes pro Bereich
  const [iSpruch,  setISpruch]  = useState(0);
  const [iEvent,   setIEvent]   = useState(0);
  const [iFilm,    setIFilm]    = useState(0);
  const [iStar,    setIStar]    = useState(0);
  const [iSpeise,  setISpeise]  = useState(0);
  const [iGetr,    setIGetr]    = useState(0);

  useEffect(() => {
    const base = 'http://localhost:3001';

    Promise.all([
      fetch(`${base}/sprichwoerter?land=Albanien`).then(r => r.json()),
      fetch(`${base}/ereignisse?land=Albanien`).then(r => r.json()),
      fetch(`${base}/filme?land=Albanien`).then(r => r.json()),
      fetch(`${base}/stars?land=Albanien`).then(r => r.json()),
      fetch(`${base}/speisen?land=Albanien`).then(r => r.json()),
      fetch(`${base}/getraenke?land=Albanien`).then(r => r.json()),
    ]).then(([sp, ev, fi, st, spn, gt]) => {
      setSprichwoerter(sp || []);
      setEreignisse(ev || []);
      setFilme(fi || []);
      setStars(st || []);
      setSpeisen(spn || []);
      setGetraenke(gt || []);

      // Indizes sauber innerhalb der Länge halten
      setISpruch(0); setIEvent(0); setIFilm(0); setIStar(0); setISpeise(0); setIGetr(0);
    }).catch(console.error);
  }, []);

  const next = (len, setIndex) => setIndex(prev => (len ? (prev + 1) % len : 0));

  const spruch   = sprichwoerter[iSpruch] || null;
  const event    = ereignisse[iEvent]     || null;
  const film     = filme[iFilm]           || null;
  const star     = stars[iStar]           || null;
  const speise   = speisen[iSpeise]       || null;
  const getr     = getraenke[iGetr]       || null;

  return (
    <div className="albanien-page">
      {/* Hero */}
      <section className="albanien-hero" style={{ backgroundImage: `url(${bg})` }}>
        <div className="albanien-hero-text">
          <h2>Willkommen auf deiner Albanien-Seite</h2>
          <p>
            Entdecke deine Wurzeln: Sprichwörter, historische Ereignisse, Filme, Stars,
            Speisen und Getränke aus Albanien.
          </p>
        </div>
      </section>

      {/* Sprichwörter */}
      <section className="albanien-section sprichwoerter">
        <h3>Sprichwörter & Zitate</h3>
        {spruch ? (
          <>
            <div className="quote-item">
              <blockquote>“{spruch.spruch}”</blockquote>
              {spruch.bedeutung && <cite>{spruch.bedeutung}</cite>}
            </div>
            <button onClick={() => next(sprichwoerter.length, setISpruch)}>Nächster Spruch</button>
          </>
        ) : <p>Lade…</p>}
      </section>

      {/* Ereignisse */}
      <section className="albanien-section ereignisse">
        <h3>Heute vor … Jahren</h3>
        {event ? (
          <>
            <div className="event-item">
              <strong>{event.jahr}</strong> : {event.beschreibung}
            </div>
            <button onClick={() => next(ereignisse.length, setIEvent)}>Nächstes Ereignis</button>
          </>
        ) : <p>Lade…</p>}
      </section>

      {/* Filme */}
      <section className="albanien-section filme">
        <h3>Filmtipp</h3>
        {film ? (
          <>
            <p><strong>{film.titel}</strong> ({film.jahr})</p>
            <p>{film.beschreibung}</p>
            <button onClick={() => next(filme.length, setIFilm)}>Nächster Tipp</button>
          </>
        ) : <p>Lade…</p>}
      </section>

      {/* Stars */}
      <section className="albanien-section stars">
        <h3>Berühmte albanische Stars</h3>
        {star ? (
          <>
            <p><strong>{star.name}</strong></p>
            <p>{star.beschreibung}</p>
            <button onClick={() => next(stars.length, setIStar)}>Nächster Star</button>
          </>
        ) : <p>Lade…</p>}
      </section>

      {/* Speisen */}
      <section className="albanien-section speisen">
        <h3>Landestypische Speisen</h3>
        {speise ? (
          <>
            <p><strong>{speise.name}</strong></p>
            <p>{speise.beschreibung}</p>
            <button onClick={() => next(speisen.length, setISpeise)}>Nächste Speise</button>
          </>
        ) : <p>Lade…</p>}
      </section>

      {/* Getränke */}
      <section className="albanien-section getraenke">
        <h3>Typische Getränke</h3>
        {getr ? (
          <>
            <p><strong>{getr.name}</strong></p>
            <p>{getr.beschreibung}</p>
            <button onClick={() => next(getraenke.length, setIGetr)}>Nächstes Getränk</button>
          </>
        ) : <p>Lade…</p>}
      </section>
    </div>
  );
}
