
import React from 'react';
import './Datenschutz.css';

export default function Datenschutz() {
  return (
    <main className="page-datenschutz">
      <h1>Datenschutzerklärung von 4MyNation</h1>

      <section>
        <h2>1. Verantwortliche Stelle & Datenschutzbeauftragter</h2>
        <p>
          Ivan Zito Fernandez – ivan.fernandez@tn.techstarter.de<br/>
          Niclas van Hees – niclas.van.hees@tn.techstarter.de<br/>
          Datenschutz­beauftragter: Max Mustermann – dpo@4mynation.de
        </p>
      </section>

      <section>
        <h2>2. Zweck, Umfang & Rechtsgrundlagen der Verarbeitung</h2>
        <ul>
          <li><strong>Vertragsabwicklung</strong> (Art. 6 Abs. 1 lit. b DSGVO): Name, Adresse, E-Mail, Zahlungsdaten</li>
          <li><strong>Betriebs- & IT-Sicherheit</strong> (Art. 6 Abs. 1 lit. f DSGVO): Log-Dateien, IP-Adresse</li>
          <li><strong>Marketing</strong> (Art. 6 Abs. 1 lit. a DSGVO): nach aktivem Opt-In für Newsletter</li>
        </ul>
      </section>

      <section>
        <h2>3. Zahlungsdienstleister</h2>
        <p>Datenweitergabe nur im notwendigen Umfang an:</p>
        <ul>
          <li>PayPal – gemäß deren Datenschutzerklärung</li>
          <li>Google Pay – gemäß deren Datenschutzerklärung</li>
          <li>Apple Pay – gemäß deren Datenschutzerklärung</li>
          <li>Kreditkartenanbieter (z. B. Stripe) – gemäß deren Datenschutzerklärung</li>
        </ul>
      </section>

      <section>
        <h2>4. Cookies & Tracking</h2>
        <p>
          Technisch nötige Cookies (Session, Warenkorb) werden ohne Einwilligung gesetzt (Art. 6 Abs. 1 lit. f DSGVO).<br/>
          Statistik- und Marketing-Cookies nur nach aktivem Opt-In (Art. 6 Abs. 1 lit. a DSGVO).<br/>
          Du kannst alle nicht-notwendigen Cookies über unseren Cookie-Manager oder in den Browsereinstellungen deaktivieren.
        </p>
      </section>

      <section>
        <h2>5. Weitergabe & Speicherdauer</h2>
        <p>
          Deine Daten werden ausschließlich für die genannten Zwecke genutzt und nicht an unbefugte Dritte weitergegeben.<br/>
          Speicherdauer: so lange, wie es zur Vertragserfüllung oder gesetzlichen Aufbewahrungspflicht (z. B. 10 Jahre Steuerrecht) erforderlich ist.
        </p>
      </section>

      <section>
        <h2>6. Betroffenenrechte</h2>
        <p>Du hast jederzeit das Recht auf:</p>
        <ul>
          <li>Auskunft (Art. 15 DSGVO)</li>
          <li>Berichtigung (Art. 16), Löschung (Art. 17), Einschränkung (Art. 18)</li>
          <li>Datenübertragbarkeit (Art. 20)</li>
          <li>Widerspruch gegen Verarbeitung (Art. 21)</li>
          <li>Widerruf erteilter Einwilligungen (Art. 7 Abs. 3 DSGVO)</li>
        </ul>
      </section>

      <section>
        <h2>7. Beschwerderecht</h2>
        <p>
          Du kannst dich bei einer Aufsichtsbehörde beschweren, z. B. bei der<br/>
          Landesbeauftragten für Datenschutz NRW:<br/>
          <a href="https://www.ldi.nrw.de" target="_blank" rel="noreferrer">
            https://www.ldi.nrw.de
          </a>
        </p>
      </section>

      <section>
        <h2>8. Datensicherheit</h2>
        <p>
          Wir setzen technische und organisatorische Maßnahmen (TLS-Verschlüsselung, Zugangskontrollen) ein, um deine Daten zu schützen (Art. 32 DSGVO).
        </p>
      </section>
    </main>
  );
}
