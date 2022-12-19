CREATE TABLE PRODOTTI (
codice INT NOT NULL PRIMARY KEY,
descrizione VARCHAR(250) NOT NULL,
prezzo FLOAT NOT NULL,
quantita INT NOT NULL,
categoria VARCHAR(20),
FOREIGN KEY (cod_f) REFERENCES FORNITORI(cod_f)
);

CREATE TABLE FORNITORI (
cod_f INT NOT NULL PRIMARY KEY,
nome VARCHAR(20) NOT NULL,
indirizzo VARCHAR(50) NOT NULL,
citta VARCHAR(2) NOT NULL
);

INSERT INTO PRODOTTI (codice, descrizione, prezzo, quantita, categoria, fornitore)
VALUES (1, 'Pomodori', 1.51, 50, 'frutta', 1);
INSERT INTO PRODOTTI (codice, descrizione, prezzo, quantita, categoria, fornitore)
VALUES (2, 'Latte', 12.46, 35, 'latticini', 1);
INSERT INTO PRODOTTI (codice, descrizione, prezzo, quantita, categoria, fornitore)
VALUES (2, 'Parmigiano', 6.10, 20, 'latticini', 3);
INSERT INTO PRODOTTI (codice, descrizione, prezzo, quantita, categoria, fornitore)
VALUES (3, 'Cereali', 5.60, 25, 'cereali', 2);

INSERT INTO FORNITORI (cod_f, 'nome', 'indirizzo', 'citta')
VALUES (1, 'mutti', 'via boh 123', 'RN');
INSERT INTO FORNITORI (cod_f, 'nome', 'indirizzo', 'citta')
VALUES (2, 'granarolo', 'via boh 456', 'MI');
INSERT INTO FORNITORI (cod_f, 'nome', 'indirizzo', 'citta')
VALUES (3, 'Kellogs', 'via boh 789', 'RM');

SELECT FROM PRODOTTI ORDER BY codice ASC;
SELECT nome, indirizzo FROM FORNITORI;
