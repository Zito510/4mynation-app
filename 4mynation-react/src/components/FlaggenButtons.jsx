// src/components/FlaggenButtons.jsx
import React from 'react';
import { useNavigate } from 'react-router-dom';
import './FlaggenButtons.css';

import albanien from '../assets/images/albanien.png';
import spanien  from '../assets/images/spanien.png';
import ukraine  from '../assets/images/ukraine.png';
import tuerkei  from '../assets/images/tuerkei.png';
import russland from '../assets/images/russland.png';

const flags = [
  { name: 'Albanien', img: albanien, path: '/albanien' },
  { name: 'Spanien',  img: spanien,  path: '/spanien'  },
  { name: 'Ukraine',  img: ukraine,  path: '/ukraine'  },
  { name: 'Türkei',   img: tuerkei,  path: '/tuerkei'  },
  { name: 'Russland', img: russland, path: '/russland' },
];

export default function FlaggenButtons() {
  const navigate = useNavigate();

  return (
    <section className="flag-buttons">
      {flags.map(({name, img, path}) => (
        <button
          key={name}
          aria-label={name}
          onClick={() => navigate(path)}
        >
          <img src={img} alt={name} />
        </button>
      ))}
    </section>
  );
}
