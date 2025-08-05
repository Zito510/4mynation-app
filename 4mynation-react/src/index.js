// src/index.js
import React from 'react';
import ReactDOM from 'react-dom/client';
import { HashRouter } from 'react-router-dom';  // ← hier

import App from './App';
import './style.css';

const root = ReactDOM.createRoot(root).render(
   <HashRouter>
     <App />
   </HashRouter>
 );