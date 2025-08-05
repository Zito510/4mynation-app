// src/pages/Landing.jsx
import React from 'react';
import Hero from '../components/Hero';
import FlaggenButtons from '../components/FlaggenButtons';
import './Landing.css';  // optional für spezifische Styles

function Landing() {
  return (
    <main>
      {/* Hero-Bild */}
      <Hero />

      {/* Länder-Flaggen-Buttons */}
      <FlaggenButtons />

      {/* Infotext */}
      <section className="info-text">
        <p>
          
        </p>
      </section>
    </main>
  );
}

export default Landing;
