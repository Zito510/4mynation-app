import React from "react";
import hero from "../assets/images/hero.png";  // <- Pfad prüfen!

function Hero() {
  return (
    <section className="hero">
      <img src={hero} alt="Hero Bild" className="hero-image" />
    </section>
  );
}

export default Hero;
