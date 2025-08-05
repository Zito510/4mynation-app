// src/App.js
import React, { useState, useEffect } from 'react';
import { Routes, Route, Navigate } from 'react-router-dom';
import './style.css';

// Komponenten
import Header from './components/Header';
import FlaggenButtons from './components/FlaggenButtons';
import Footer from './components/Footer';

// Seiten
import Landing from './pages/Landing';
import Albanien from './pages/Albanien';
import Spanien from './pages/Spanien';
import Ukraine from './pages/Ukraine';
import Tuerkei from './pages/Tuerkei';
import Russland from './pages/Russland';
import AGB from './pages/AGB';
import Impressum from './pages/Impressum';
import Datenschutz from './pages/Datenschutz';

function App() {
  const [countries, setCountries] = useState([]);
  const [selectedCountry, setSelectedCountry] = useState(null);

  useEffect(() => {
    fetch('http://localhost:3001/laender')
      .then(res => res.json())
      .then(data => setCountries(data))
      .catch(err => console.error('Fehler beim Laden der Länder:', err));
  }, []);

  return (
    <>
      {/* Globaler Header */}
      <Header countries={countries} />

      {/* Route-Definitionen */}
      <Routes>
        {/* Startseite */}
        <Route path="/" element={<Landing />} />

        {/* Länder-Seiten */}
        <Route path="/albanien" element={<Albanien />} />
        <Route path="/spanien" element={<Spanien />} />
        <Route path="/ukraine" element={<Ukraine />} />
        <Route path="/tuerkei" element={<Tuerkei />} />
        <Route path="/russland" element={<Russland />} />

        {/* Rechtliches */}
        <Route path="/agb" element={<AGB />} />
        <Route path="/impressum" element={<Impressum />} />
        <Route path="/datenschutz" element={<Datenschutz />} />

        {/* Fallback */}
        <Route path="*" element={<Navigate to="/" replace />} />
      </Routes>

      {/* Globaler Footer */}
      <Footer />
    </>
  );
}

export default App;
