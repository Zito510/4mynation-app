-- 📌 Datenbank anlegen und auswählen
CREATE DATABASE IF NOT EXISTS 4mynation;
USE 4mynation;

-- 🌍 Tabelle: Länder
CREATE TABLE IF NOT EXISTS laender (
  id INT AUTO_INCREMENT PRIMARY KEY,               -- Eindeutige ID für jedes Land
  name VARCHAR(100),                               -- Name des Landes (z. B. "Albanien")
  beschreibung TEXT,                               -- Beschreibung oder kulturelle Info
  flagge_url VARCHAR(255)                          -- Link zur Flagge oder einem Bild
);

-- 🧠 Tabelle: Zitate
CREATE TABLE IF NOT EXISTS zitate (
  id INT AUTO_INCREMENT PRIMARY KEY,               -- Eindeutige ID für jedes Zitat
  land_id INT,                                     -- Verknüpfung zum Land (Fremdschlüssel)
  text TEXT,                                       -- Das Zitat selbst
  autor VARCHAR(100),                              -- Der Autor des Zitats (optional)
  FOREIGN KEY (land_id) REFERENCES laender(id)     -- Beziehung zum Land
    ON DELETE CASCADE
);

-- 🎬 Tabelle: Filme
CREATE TABLE IF NOT EXISTS filme (
  id INT AUTO_INCREMENT PRIMARY KEY,               -- Eindeutige ID für den Film
  land_id INT,                                     -- Verknüpfung zum Land
  titel VARCHAR(200),                              -- Titel des Films
  beschreibung TEXT,                               -- Beschreibung oder Empfehlung
  link VARCHAR(255),                               -- Link zur Info-/Streamingseite
  FOREIGN KEY (land_id) REFERENCES laender(id)
    ON DELETE CASCADE
);

-- 👕 Tabelle: Produkte (T-Shirts etc.)
CREATE TABLE IF NOT EXISTS produkte (
  id INT AUTO_INCREMENT PRIMARY KEY,               -- Eindeutige ID für das Produkt
  land_id INT,                                     -- Verknüpfung zum Land
  name VARCHAR(100),                               -- Produktname (z. B. "BESA-Shirt")
  bild_url VARCHAR(255),                           -- Link zum Produktbild
  shop_link VARCHAR(255),                          -- Link zum Shopartikel
  FOREIGN KEY (land_id) REFERENCES laender(id)
    ON DELETE CASCADE
);

-- 📅 Tabelle: Tagebuch (Tagesplanung & Stimmung)
CREATE TABLE IF NOT EXISTS tage (
  id INT AUTO_INCREMENT PRIMARY KEY,               -- Eindeutige ID für jeden Eintrag
  datum DATE,                                      -- Das Datum des Eintrags
  stimmung VARCHAR(50),                            -- Stimmung des Tages (z. B. "stolz")
  aufgaben TEXT,                                   -- Aufgaben für den Tag
  notiz TEXT                                        -- Persönliche Reflexion
);

-- 🍽️ Tabelle: Gerichte (landestypisches Essen)
CREATE TABLE IF NOT EXISTS gerichte (
  id INT AUTO_INCREMENT PRIMARY KEY,               -- Eindeutige ID für das Gericht
  land_id INT,                                     -- Verknüpfung zum Land
  name VARCHAR(100),                               -- Name des Gerichts (z. B. "Byrek")
  beschreibung TEXT,                               -- Beschreibung oder Herkunft
  bild_url VARCHAR(255),                           -- Bildlink
  rezept_url VARCHAR(255),                         -- Link zum Rezept oder Video
  FOREIGN KEY (land_id) REFERENCES laender(id)
    ON DELETE CASCADE
);
