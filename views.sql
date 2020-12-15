CREATE VIEW svi_kontakti AS
SELECT p.ID_poslovnice, br.*
FROM poslovnice AS p INNER JOIN brojevi_tel AS br;
ON br.glavni_broj_tel = p.glavni_broj_tel;

SELECT * FROM svi_kontakti;

CREATE VIEW SUV_tipovi AS
SELECT t.ID_automobila, t.opis_automobila, a.brend_automobila
FROM tip_automobila AS t INNER JOIN automobili AS a
WHERE a.ID_automobila = t.ID_automobila AND t.opis_automobila="SUV";

SELECT * FROM suv_tipovi;

CREATE VIEW skoda_rezervacije AS
SELECT a.brend_automobila, r.ID_rezervacija_automobila, 
r.cijena, k.ID_kupac, k.broj_LK, k.ime, k.prezime
FROM automobili AS a 
INNER JOIN rezervacija_automobila AS r
ON r.ID_automobila = a.ID_automobila
INNER JOIN kupci AS k
WHERE r.ID_kupac = k.ID_kupac AND a.brend_automobila = "Skoda";

SELECT * FROM skoda_rezervacije;

CREATE VIEW mostar_poslovnica AS
SELECT p.ulica, p.glavni_broj_tel, a.ID_automobila, a.brend_automobila,
a.deskripcija_automobila, a.datum_kupovine_automobila
FROM poslovnice AS p
INNER JOIN automobili AS a
WHERE a.ID_poslovnice = p.ID_poslovnice AND p.grad="Mostar";

SELECT * FROM mostar_poslovnica;

CREATE VIEW rez_ispod_1000 AS
SELECT r.ID_rezervacija_automobila, r.cijena, r.lokacija_preuzimanja,
k.ID_kupac, k.ime, k.prezime
FROM rezervacija_automobila AS r
INNER JOIN kupci AS k
WHERE r.ID_kupac = k.ID_kupac AND r.cijena < 1000;

SELECT * FROM rez_ispod_1000;
