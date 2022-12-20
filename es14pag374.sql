CREATE TABLE FORNITORI (
cod_f INT PRIMARY KEY,
nome VARCHAR(20) NOT NULL,
indirizzo VARCHAR(50) NOT NULL,
citta VARCHAR(2) NOT NULL
);

CREATE TABLE PRODOTTI (
codice INT PRIMARY KEY,
descrizione VARCHAR(250) NOT NULL,
prezzo FLOAT NOT NULL,
quantita INT NOT NULL,
categoria VARCHAR(20),
codiceFornitore INT,
FOREIGN KEY (codiceFornitore) REFERENCES FORNITORI(cod_f)
);

INSERT INTO FORNITORI (cod_f, 'nome', 'indirizzo', 'citta')
VALUES (1, 'mutti', 'via boh 123', 'RN');
INSERT INTO FORNITORI (cod_f, 'nome', 'indirizzo', 'citta')
VALUES (2, 'granarolo', 'via boh 456', 'MI');
INSERT INTO FORNITORI (cod_f, 'nome', 'indirizzo', 'citta')
VALUES (3, 'Kellogs', 'via boh 789', 'RM');

INSERT INTO PRODOTTI (codice, descrizione, prezzo, quantita, categoria, codiceFornitore)
VALUES (1, 'Pomodori', 1.51, 50, 'frutta', 1);
INSERT INTO PRODOTTI (codice, descrizione, prezzo, quantita, categoria, codiceFornitore)
VALUES (2, 'Latte', 12.46, 35, 'latticini', 1);
INSERT INTO PRODOTTI (codice, descrizione, prezzo, quantita, categoria, codiceFornitore)
VALUES (3, 'Parmigiano', 6.10, 20, 'latticini', 3);
INSERT INTO PRODOTTI (codice, descrizione, prezzo, quantita, categoria, codiceFornitore)
VALUES (4, 'Cereali', 5.60, 25, 'cereali', 2);

--QUERY A--
SELECT * FROM PRODOTTI ORDER BY codice ASC;

--QUERY B--
SELECT nome, indirizzo FROM FORNITORI;

--QUERY C--
SELECT indirizzo FROM FORNITORI
WHERE nome = "mutti";

--QUERY D--
SELECT descrizione FROM PRODOTTI
WHERE prezzo > 5;

--QUERY E--
SELECT nome, indirizzo FROM PRODOTTI INNER JOIN FORNITORI ON codiceFornitore = cod_f
WHERE quantita < 25;

--QUERY F--
SELECT descrizione FROM PRODOTTI
WHERE codice LIKE 1+'%';

--QUERY G--
SELECT codiceFornitore, COUNT(*) AS NUMERO FROM PRODOTTI GROUP BY codiceFornitore;

--QUERY H--
SELECT descrizione, MAX(prezzo) AS maxPrezzo FROM PRODOTTI

--QUERY I--
SELECT descrizione FROM PRODOTTI
WHERE codiceFornitore = 2;

--QUERY J--
UPDATE PRODOTTI
SET quantita = quantita + 100 WHERE codice = 1;

--QUERY K--
UPDATE PRODOTTI
SET prezzo = prezzo * 1.05 WHERE categoria = "latticini";

--QUERY L--
INSERT INTO FORNITORI (cod_f, 'nome', 'indirizzo', 'citta')
VALUES (4, 'DeCecco', 'via boh 1011', 'LC');

--QUERY M--
SELECT codice, descrizione FROM PRODOTTI
WHERE prezzo >=1000 & prezzo <=5000;
