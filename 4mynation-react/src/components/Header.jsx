// src/components/Header.jsx
import React from 'react';
import { NavLink } from 'react-router-dom';
import logo from '../assets/images/logo.png';    // ← so importieren wir das Bild
import './Header.css';

export default function Header() {
  return (
    <header className="topbar">
      <div className="topbar__inner">
        {/* Klick aufs Logo führt zurück zur Startseite */}
        <NavLink to="/" className="logo-link">
          <img src={logo} alt="4MyNation Logo" className="logo" />
        </NavLink>

        {/* Länder-Navigation */}
        <nav className="nav-links">
          <NavLink to="/albanien">Albanien</NavLink>
          <NavLink to="/spanien">Spanien</NavLink>
          <NavLink to="/ukraine">Ukraine</NavLink>
          <NavLink to="/tuerkei">Türkei</NavLink>
          <NavLink to="/russland">Russland</NavLink>
        </nav>

        {/* Rechtliches Dropdown */}
        <select
          className="dropdown"
          onChange={e => {
            const path = e.target.value;
            if (path) window.location.href = path;
          }}
        >
          <option value="">Mehr</option>
          <option value="/agb">AGB</option>
          <option value="/impressum">Impressum</option>
          <option value="/datenschutz">Datenschutz</option>
        </select>
      </div>
    </header>
  );
}
