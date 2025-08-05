-- Einfügen der Länder
INSERT INTO laender (id, name, beschreibung) VALUES
  (1, 'Albanien', 'Südosteuropäisches Land mit reicher Geschichte und Kultur.');

-- Historische Ereignisse
INSERT INTO ereignisse (laender_id, titel, jahr, beschreibung) VALUES
  (1, 'Fürstentum Arbër', 1190, 'Erstes bekannte albanische Staatswesen im Mittelalter.'),
  (1, 'Skanderbegs Loslösung vom Osmanischen Reich', 1443, 'Beginn des jahrzehntelangen Widerstands.'),
  (1, 'Liga von Lezha', 1444, 'Vereinigung albanischer Fürsten unter Skanderbeg.'),
  (1, 'Fall von Kruja', 1478, 'Endgültiger Sieg der Osmanen nach Skanderbegs Tod.'),
  (1, 'Liga von Prizren', 1878, 'Beginn des albanischen Nationalbewusstseins.'),
  (1, 'Alphabet-Kongress', 1908, 'Festlegung des einheitlichen lateinischen Alphabets.'),
  (1, 'Unabhängigkeit von Osmanischem Reich', 1912, 'Proklamiert in Vlora am 28. November.'),
  (1, 'Vertrag von London', 1913, 'Internationale Anerkennung Albaniens, aber mit Gebietsverlusten.'),
  (1, 'Kongress von Lushnja', 1920, 'Festigung des Staates und Umzug der Hauptstadt nach Tirana.'),
  (1, 'König Zog I.', 1928, 'Ausrufung des Königreichs Albanien.'),
  (1, 'Italienische Besatzung', 1939, 'Mussolinis Truppen marschieren ein.'),
  (1, 'Deutsche Besatzung', 1943, 'Nach Italiens Kapitulation besetzen Nazis das Land.'),
  (1, 'Kommunistischer Machtantritt', 1944, 'Enver Hoxha etabliert eine Diktatur.'),
  (1, 'Religionsverbot', 1967, 'Albanien wird offiziell atheistischer Staat.'),
  (1, 'Bruch mit China', 1978, 'Ende aller Auslandskontakte, extreme Isolation.'),
  (1, 'Tod Enver Hoxhas', 1985, 'Ende einer Ära der Diktatur.'),
  (1, 'Demokratische Wende beginnt', 1990, 'Massenfluchten und erste Proteste.'),
  (1, 'Erster Machtwechsel', 1991, 'Fall des Kommunismus, erste freie Wahlen.'),
  (1, 'Staatskrise durch Pyramidensysteme', 1997, 'Fast-Bürgerkrieg nach Zusammenbruch illegaler Finanzsysteme.'),
  (1, 'NATO-Beitritt', 2009, 'Albanien wird Mitglied des Militärbündnisses.');

-- Berühmte Filme
INSERT INTO filme (laender_id, titel, jahr, beschreibung) VALUES
  (1, 'Slogans', 2001, 'Satire über das Bildungssystem während der Diktatur.'),
  (1, 'The Forgiveness of Blood', 2011, 'Drama über Blutrache im modernen Albanien.'),
  (1, 'Bota', 2014, 'Leben in einem abgeschiedenen Dorf nach dem Kommunismus.'),
  (1, 'Time of the Comet', 2008, 'Historienfilm zur Zeit der albanischen Unabhängigkeit.'),
  (1, 'Anija', 2012, 'Doku über die Fluchtwelle 1991 per Schiff nach Italien.'),
  (1, 'Alive!', 2009, 'Ein junger Mann muss sich im Nordalbanen der Moderne behaupten.'),
  (1, 'Colonel Bunker', 1996, 'Politisches Drama über das Regime Hoxhas.'),
  (1, 'Der Albaner', 2010, 'Deutscher Film über die Migration eines albanischen Jugendlichen.'),
  (1, 'East, West, East', 2009, 'Komödie über eine Radrennmannschaft während des Umbruchs.'),
  (1, 'Chromium', 2015, 'Coming-of-Age-Drama in einer albanischen Industriestadt.');

-- Berühmte Stars
INSERT INTO stars (laender_id, name, beschreibung) VALUES
  (1, 'Dua Lipa', 'Weltstar im Pop, Eltern aus dem Kosovo.'),
  (1, 'Rita Ora', 'Britische Popsängerin mit kosovarischer Herkunft.'),
  (1, 'Bebe Rexha', 'US-Sängerin mit albanischen Wurzeln.'),
  (1, 'Eliza Dushku', 'Hollywood-Schauspielerin (Buffy, Bring It On).'),
  (1, 'Action Bronson', 'US-Rapper und Koch, albanischer Vater.'),
  (1, 'Ava Max', 'Popsängerin mit albanischen Eltern, in den USA geboren.'),
  (1, 'Era Istrefi', 'Sängerin mit dem WM-Song 2018.'),
  (1, 'Arta Dobroshi', 'Schauspielerin, international bekannt durch Lornas Silence.'),
  (1, 'Masiela Lusha', 'Schauspielerin aus der George Lopez Show.'),
  (1, 'Lorik Cana', 'Ehemaliger Kapitän der albanischen Fußballnationalmannschaft.');

-- Berühmte Speisen
INSERT INTO speisen (laender_id, name, beschreibung) VALUES
  (1, 'Byrek', 'Blätterteig mit Füllung (Spinat, Fleisch, Käse), überall beliebt.'),
  (1, 'Tavë Kosi', 'Lammauflauf mit Joghurt und Reis, Nationalgericht.'),
  (1, 'Fli (Flija)', 'Vielschichtiges Teiggericht, traditionell über Feuer gebacken.'),
  (1, 'Qofte', 'Gebratene Fleischbällchen mit Kräutern.'),
  (1, 'Fërgesë', 'Ofengericht aus Paprika, Tomaten und Käse.'),
  (1, 'Speca me gjizë', 'Gefüllte Paprika mit Frischkäse.'),
  (1, 'Pite me Spinaq', 'Hausgemachte Pastete mit Spinat.'),
  (1, 'Japrak', 'Gefüllte Weinblätter mit Reis.'),
  (1, 'Paçe', 'Suppe aus Kopf oder Kutteln, deftig und wärmend.'),
  (1, 'Trileçe', 'Drei-Milch-Kuchen, süßer Klassiker.');

-- Berühmte Getränke
INSERT INTO getraenke (laender_id, name, beschreibung) VALUES
  (1, 'Raki', 'Klarer Schnaps aus Trauben oder Obst, sehr traditionell.'),
  (1, 'Dhallë', 'Joghurtgetränk, salzig und erfrischend.'),
  (1, 'Albanischer Kaffee', 'Stark und schwarz, wie türkischer Mokka.'),
  (1, 'Kompot', 'Hausgemachter Fruchtsaft aus gekochten Früchten.'),
  (1, 'Bozë', 'Fermentiertes Getränk aus Mais oder Weizen.'),
  (1, 'Kos', 'Dickflüssiger Joghurt, oft als Beilage.'),
  (1, 'Verë Shesh i Zi', 'Traditioneller Rotwein aus autochthoner Rebsorte.'),
  (1, 'Verë Shesh i Bardhë', 'Typischer Weißwein aus Albanien.'),
  (1, 'Çaj Mali', 'Bergtee aus wilden Kräutern, beruhigend und aromatisch.'),
  (1, 'Shira', 'Zuckerwasser oder Sirup, manchmal fermentiert.');

-- Berühmte Sprichwörter
INSERT INTO sprichwoerter (laender_id, spruch, bedeutung) VALUES
  (1, 'Gjuha është pasuria më e madhe e një kombi.', 'Die Sprache ist der größte Reichtum eines Volkes.'),
  (1, 'Më mirë një zog në dorë se sa një pëllumb në pyll.', 'Besser ein Vogel in der Hand als eine Taube im Wald.'),
  (1, 'Shtëpia pa libër është si trupi pa shpirt.', 'Ein Haus ohne Buch ist wie ein Körper ohne Seele.'),
  (1, 'Bëhu burrë që të të respektojnë.', 'Sei ein Mann, damit man dich respektiert.'),
  (1, 'Nuk të jepet çdo gjë që e do zemra.', 'Nicht alles, was das Herz begehrt, wird dir gegeben.'),
  (1, 'Guri i fortë e thyhet, por i lëmuari rrëshqet.', 'Der harte Stein bricht, der glatte rutscht weg.'),
  (1, 'Kush kërkon gjen, kush lëviz fiton.', 'Wer sucht, findet; wer sich bewegt, gewinnt.'),
  (1, 'Fjalët e holla shkojnë në zemër.', 'Sanfte Worte gehen ins Herz.'),
  (1, 'Miku i mirë është një pasuri.', 'Ein guter Freund ist ein Schatz.'),
  (1, 'Kush nuk di të falë, nuk di të dojë.', 'Wer nicht vergeben kann, kann nicht lieben.');
