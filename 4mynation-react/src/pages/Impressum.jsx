// 📁 src/pages/Impressum.jsx
import React from 'react';
import './Impressum.css';

export default function Impressum() {
  return (
    <main className="page-impressum">
      <h1>Impressum für 4MyNation</h1>

      <section>
        <h2>Angaben gemäß § 5 TMG</h2>
        <p>
          4MyNation<br/>
          Einzelunternehmen<br/>
          Limbusweg 9 3/4<br/>
          HS7 3YX Hogsmeade<br/>
          Vereinigtes Königreich
        </p>
      </section>

      <section>
        <h2>Kontakt</h2>
        <p>
          Telefon: 0176 3321254<br/>
          E-Mail: ivan.fernandez@tn.techstarter.de<br/>
          E-Mail: niclas.van.hees@tn.techstarter.de
        </p>
      </section>

      <section>
        <h2>Vertreten durch</h2>
        <p>
          Ivan Zito Fernandez und Niclas van Hees
        </p>
      </section>

      <section>
        <h2>Umsatzsteuer-ID</h2>
        <p>
          USt-IdNr.: DE999999999 (fiktiv, nur für Schulprojekt)
        </p>
      </section>

      <section>
        <h2>Registereintrag</h2>
        <p>
          Eintragung im Handelsregister<br/>
          Registergericht: Zauberei-Ministerium<br/>
          Registernummer: HRA 123456 (fiktiv, nur für Schulprojekt)
        </p>
      </section>

      <section>
        <h2>Verantwortlich für den Inhalt<br/>nach § 55 Abs. 2 RStV</h2>
        <p>
          Ivan Zito Fernandez<br/>
          Limbusweg 9 3/4<br/>
          HS7 3YX Hogsmeade
        </p>
      </section>
    </main>
  );
}
