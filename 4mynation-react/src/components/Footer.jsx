import React from 'react';
import { Link } from 'react-router-dom';
import './Footer.css';

export default function Footer() {
  return (
    <footer className="footer">
      <ul className="footer-links">
        <li><Link to="/agb">AGB</Link></li>
        <li><Link to="/impressum">Impressum</Link></li>
        <li><Link to="/datenschutz">Datenschutz</Link></li>
      </ul>
    </footer>
  );
}
