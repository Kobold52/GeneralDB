#  Projektvorschlag

Heutzutage werden die Daten/Eigenschaften von realen Objekten in relationalen Datenbanken
gespeichert. Die Objekte werden in Tabellen und deren Daten werden in den jeweiligen
Tabellenspalten abgelegt bzw. gespeichert. 

Die Daten werden dann in einer Benutzeroberfläche in Form von Tabellen oder Karteikarten
dargestellt bzw. gepflegt.
D.h. der Umfang der Daten wird bei der Definition der jeweiligen Tabellen festgelegt. Sollen
später Daten hinzugefügt werden, muss man die Datenbankstruktur und die Benutzeroberfläche
ändern. 

Ziel des Projektes ist, generisch Objektmuster mit Angabe der jeweiligen Daten/Eigenschaften
definieren zu können, ohne dass bei einer späteren Änderung dieser Muster eine Änderung der
Datenbank und der Benutzeroberfläche nach sich zieht.

Grundsätzliche Datenstruktur:

Tabelle Objektmuster u. Objekte 
- Name
- Objekttyp (Unternehmen, Organisation, Gerät/Anlage, Vertrag, …), Objektstatus (freigegeben, vorläufig) 
- Objektbeschreibung
- Versionsnummer


Tabelle Attributmuster u. Attribute
- Name
- Eingabeaufforderung (im Eingabeformular)
- Auswahl Datengattung (Texteingabe, Datumsangabe, Auswahlkatalog, Flächenangabe, Gewichtsangabe, …elektr. Leistungsangabe…)
- Datentyp (Text, Number, Datum, Auswahl, Data), Einheit (alle physikalischen Einheiten, Währungen, …)
- Hilfetext für die Eingabeaufforderung
- Versionierung der Dateneingabe (sollen später Eingabeänderungen protokolliert werden ja/nein)
- Gruppierung Dateneingabe (technische, kfm. Daten, Wartung, Prüfung usw.)
- TAG’s
- Zeiger auf Objektmuster/Objekt

Tabelle Attributwerte:
- Text
- Integer
- Number
- Date
- URL
- Zeiger auf Attribut
- Zeiger auf Vorgänger Attributwert


Relation Objektmuster 1:n Attributmuster
Relation Objekt 1:n Attribut
Relation Attribut 1:n Attributwerte
Relation Attributwerte 0:n Attributwerte






