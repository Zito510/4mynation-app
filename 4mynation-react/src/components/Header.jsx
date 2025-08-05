import React from 'react';
import { Link, useNavigate } from 'react-router-dom';
import './Header.css';
import logo from '../assets/images/logo.png';

export default function Header({ countries }) {
  const navigate = useNavigate();

  const handleSelect = (e) => {
    const path = e.target.value;
    if (path) navigate(`/${path}`);
  };

  return (
    <header className="topbar">
      {/* Logo navigiert zurück zur Startseite */}
      <Link to="/" className="logo-link">
        <img src={logo} alt="4MyNation Logo" className="logo" />
      </Link>

      {/* Länder-Navigation */}
      <nav className="nav-links">
        {countries.map(c => (
          <Link key={c.id} to={`/${c.name.toLowerCase()}`}>  {/* Pfad muss lowercase sein */}
            {c.name}
          </Link>
        ))}
      </nav>

      {/* Rechtliches Dropdown */}
      <select className="dropdown" onChange={handleSelect} defaultValue="">
        <option value="" disabled>Mehr</option>
        <option value="agb">AGB</option>
        <option value="impressum">Impressum</option>
        <option value="datenschutz">Datenschutz</option>
      </select>
    </header>
  );
}
