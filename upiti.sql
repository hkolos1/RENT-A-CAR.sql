SELECT ID_kupac
FROM rezervacija_automobila ra
WHERE ra.lokacija_vracanja='Sarajevo';

SELECT *
FROM rezervacija_automobila rez
WHERE rez.cijena between 100 and 1000
ORDER BY datum_povratka DESC;

SELECT id_automobili,
	   boja_automobila,
       brend_automobila
FROM automobili a
WHERE deskripcija_automobila='ispravan'
ORDER BY id_automobila ASC;

SELECT ime,
	   prezime,
       mobitel,
       grad 
FROM kupci k
WHERE k.drzava='BiH';

/*svi kupci koji su rezervisali automobile čija je lokacija za vraćanje Sarajevo*/
SELECT ime, 
	   prezime
FROM kupci k
WHERE k.id_kupac IN(
					SELECT id_kupac
                    FROM rezervacija_automobila rez
                    WHERE rez.lokacija_vracanja='Sarajevo');

/*svi brendovi automobila koji su limuzine*/
SELECT brend_automobila
FROM automobili a
WHERE a.ID_automobila IN(
							SELECT ID_automobila
                            FROM tip_automobila tip
                            WHERE tip.opis_automobila='Limuzina');
                            
SELECT ime,
	   prezime,
       grad,
       drzava,
       email
FROM kupci k
WHERE k.ime LIKE 'A%';

#7 /*opisi automobila koji su ispravni*/
SELECT opis_automobila
FROM tip_automobila tip
WHERE tip.ID_automobila IN(
								SELECT ID_automobila
								FROM automobili a
                                WHERE a.deskripcija_automobila='Ispravan');

SELECT telefon_1,
	   telefon_2, 
       telefon_3
FROM brojevi_tel br
WHERE br.glavni_broj_tel LIKE '%5';

SELECT ulica,
	   glavni_broj_tel AS broj
FROM poslovnice p
WHERE p.grad='Sarajevo';

SELECT glavni_broj_tel AS broj,
	   grad
FROM poslovnice p
WHERE p.ID_poslovnice IN(
						SELECT lokacija_preuzimanja
						FROM rezervacija_automobila rez
						WHERE rez.cijena BETWEEN 200 and 300);
                        
SELECT ime,
	   prezime,
       grad
FROM kupci k
WHERE k.drzava IN(
				  SELECT p.drzava
                  FROM poslovnice p
                  WHERE k.drzava=p.drzava);
                  
SELECT *
FROM tip_automobila tip
WHERE tip.broj_sasije_automobila LIKE '%4';

SELECT id_automobila, 
	   datum_kupovine_automobila AS datum_kupovine,
       boja_automobila AS boja,
       brend_automobila AS brand
FROM automobili 
ORDER BY datum_kupovine_automobila DESC;

SELECT grad,
	   drzava
FROM kupci k
ORDER BY k.drzava ASC;

SELECT ID_kupac,
       broj_LK,
	   ime,
	   prezime,
       grad,
       drzava
FROM kupci k
WHERE k.broj_LK LIKE 'V%' OR k.broj_LK LIKE 'D%';

SELECT *
FROM tip_automobila tip
WHERE tip.opis_automobila='Karavan';
