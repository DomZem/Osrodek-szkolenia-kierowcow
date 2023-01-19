------ Tabela Adresy ------

-- Pr�ba wprowadzenia b��dnego kodu pocztowego
INSERT INTO Adresy(miejscowosc, ulica, kodPocztowy) VALUES('Krak�w', 'S�owicza', '31A320');

-- Pr�ba wprowadzenia warto��i ujemnej dla numer domu
INSERT INTO Adresy(miejscowosc, ulica, kodPocztowy, numerDomu) VALUES('Krak�w', 'Mickiewicza', '31-320', -1);

-- Pr�ba wprowadzenia warto��i ujemnej dla numer lokalu
INSERT INTO Adresy(miejscowosc, ulica, kodPocztowy, numerLokalu) VALUES('My�lenice', 'Curie', '32-230', -1);

------ Tabela Egzaminy ------

-- Pr�ba wprowadzenia innej litery ni� T, P dla rodzaju egzaminu
INSERT INTO Egzaminy(dataEgzaminu, rodzaj, kategoria, idKursanta) VALUES (GETDATE()+1, 'X', 'B', 3);

-- Pr�ba wprowadzenia innej litery ni� T, F dla zaliczenia egzaminu
INSERT INTO Egzaminy(dataEgzaminu, rodzaj, kategoria, zaliczony, idKursanta) VALUES (GETDATE()+1, 'T', 'B', 'X', 4);

-- Pr�ba wprowadzenia daty egzaminu, kt�ra jest wcze�niejsza ni� aktualna
INSERT INTO Egzaminy(dataEgzaminu, rodzaj, kategoria, idKursanta) VALUES (GETDATE()-1, 'T', 'B', 5);

-- Pr�ba wprowadzenia innej kategorii prawa jazdy ni� AM, A1, A2, A, B1, B, B+E, C, C1, C1+E, D, D1, D1+E, D+E, T
INSERT INTO Egzaminy(dataEgzaminu, rodzaj, kategoria, idKursanta) VALUES (GETDATE()+1, 'T', 'X', 6);

------ Tabela Instruktorzy ------

-- Pr�ba wprowadzenia numeru PESEL, kt�ry zawiera litery zamiast cyfr
INSERT INTO Instruktorzy(imie, nazwisko, PESEL, numerTelefonu) VALUES('Szczepan', 'Miko�ajczyk', '42A10500891', '883924234');

-- Pr�ba wprowadzenia numeru telefonu, kt�ry zawiera litery zamiast cyfr
INSERT INTO Instruktorzy(imie, nazwisko, PESEL, numerTelefonu) VALUES('Szczepan', 'Miko�ajczyk', '42310500891', '88A924234');

-- Pr�ba wprowadzenia daty urodzenia, kt�ra jest p�niejsza ni� aktualna
INSERT INTO Instruktorzy(imie, nazwisko, PESEL, numerTelefonu, dataUrodzenia) VALUES('Szczepan', 'Miko�ajczyk', '42310500891', '883924234', GETDATE()+1);

-- Pr�ba wprowadzenia zduplikowanego numeru telefonu
INSERT INTO Instruktorzy(imie, nazwisko, PESEL, numerTelefonu) VALUES('Szczepan', 'Miko�ajczyk', '42310500891', '609136229');

-- Pr�ba wprowadzenia zduplikowanego numeru PESEL
INSERT INTO Instruktorzy(imie, nazwisko, PESEL, numerTelefonu) VALUES('Szczepan', 'Miko�ajczyk', '12282706154', '883924234');

------ Tabela Jazdy ------

-- Pr�ba wprowadzniea instruktora, kt�ry odby� ju� jazd� tego samego dnia
INSERT INTO Jazdy (dataJazdy, godzinaRozpoczecia, opis, liczbaGodzin, idInstruktora, idPojazdu, idKursanta1, idKursanta2, idKursanta3) 
VALUES(GETDATE()+32, '14:45', 'Jazda po mie�cie', 2, 3, 4, 2, null, null);

-- Pr�ba wprowadzenia pojazdu, kt�ry by� ju� u�ywany tego samego dnia
INSERT INTO Jazdy (dataJazdy, godzinaRozpoczecia, opis, liczbaGodzin, idInstruktora, idPojazdu, idKursanta1, idKursanta2, idKursanta3) 
VALUES(GETDATE()+32, '14:45', 'Jazda po mie�cie', 2, 1, 3, 3, null, null);

-- Pr�ba wprowadzenia daty jazdy, kt�ra jest wcze�niejsza ni� aktualna
INSERT INTO Jazdy (dataJazdy, godzinaRozpoczecia, opis, liczbaGodzin, idInstruktora, idPojazdu, idKursanta1, idKursanta2, idKursanta3) 
VALUES(GETDATE()-1, '14:45', 'Jazda po mie�cie', 0, 1, 3, 1, 2, 3);

-- Pr�ba wprowadzenia liczby godzin r�wnej 0
INSERT INTO Jazdy (dataJazdy, godzinaRozpoczecia, opis, liczbaGodzin, idInstruktora, idPojazdu, idKursanta1, idKursanta2, idKursanta3) 
VALUES(GETDATE()+33, '14:45', 'Jazda po mie�cie', 0, 1, 3, 1, 2, 3);

-- Pr�ba wprowadzenia jazdy bez kursant�w 
INSERT INTO Jazdy (dataJazdy, godzinaRozpoczecia, opis, liczbaGodzin, idInstruktora, idPojazdu, idKursanta1, idKursanta2, idKursanta3) 
VALUES(GETDATE()+33, '14:45', 'Jazda po mie�cie', 3, 1, 3, null, null, null);

-- Pr�ba wprowadzenia tych samych kursant�w
INSERT INTO Jazdy (dataJazdy, godzinaRozpoczecia, opis, liczbaGodzin, idInstruktora, idPojazdu, idKursanta1, idKursanta2, idKursanta3) 
VALUES(GETDATE()+33, '14:45', 'Jazda po mie�cie', 3, 1, 3, 1, 1, null);

INSERT INTO Jazdy (dataJazdy, godzinaRozpoczecia, opis, liczbaGodzin, idInstruktora, idPojazdu, idKursanta1, idKursanta2, idKursanta3) 
VALUES(GETDATE()+33, '14:45', 'Jazda po mie�cie', 3, 1, 3, 1, 2, 1);

INSERT INTO Jazdy (dataJazdy, godzinaRozpoczecia, opis, liczbaGodzin, idInstruktora, idPojazdu, idKursanta1, idKursanta2, idKursanta3) 
VALUES(GETDATE()+33, '14:45', 'Jazda po mie�cie', 3, 1, 3, 1, 2, 2);

------ Tabela Kursanci ------

-- Pr�ba wprowadzenia numeru dowodu osobistego, kt�ry zawiera w pierwszych trzech znakach liczby
INSERT INTO Kursanci VALUES('Zofia','Bednarczyk', '1974-04-22', '933861776', 'A1J169663', 1);

-- Pr�ba wprowadzenia numeru dowodu osobistego, kt�ry zawiera od czwartego znaku litery
INSERT INTO Kursanci VALUES('Zofia','Bednarczyk', '1974-04-22', '933861776', 'AMJA69663', 1);

-- Pr�ba wprowadzenia numeru telefonu, kt�ry zawiera litery zamiast cyfr
INSERT INTO Kursanci VALUES('Zofia','Bednarczyk', '1974-04-22', '93A861776', 'AMJ169663', 1);

-- Pr�ba wprowadzenia daty urodzenia, kt�ra jest p�niejsza ni� aktualna
INSERT INTO Kursanci VALUES('Zofia','Bednarczyk', GETDATE()+1, '933861776', 'AMJ169663', 1);

-- Pr�ba wprowadzenia dupliaktu dla numeru telefonu
INSERT INTO Kursanci VALUES('Zofia','Bednarczyk', '1974-04-22', '618205993', 'AMJ310155', 1);

-- Pr�ba wprowadzenia duplikatu dla numeru dowodu osobistego
INSERT INTO Kursanci VALUES('Zofia','Bednarczyk', '1974-04-22', '933861776', 'AMJ355844', 1);

------ Tabela Kursy ------

-- Pr�ba wprowadzenia kategorii kt�ra jest inna ni� AM, A1, A2, A, B1, B, B+E, C, C1, C1+E, D, D1, D1+E, D+E, T
INSERT INTO Kursy VALUES('X', 30, 17, 9);

-- Pr�ba wprowadznie liczby godzin r�wnej 0
INSERT INTO Kursy VALUES('B1', 0, 17, 9);

-- Pr�ba wprowadzenia minimalnej ilo�� lat r�wnej 0
INSERT INTO Kursy VALUES('B1', 30, 0, 9);

------ Tabela Licencje ------

-- Proba wprowadzenia licencji, kt�r� instruktor ju� posiada
INSERT INTO Licencje VALUES(GETDATE()-365, GETDATE()+365, 'AM', 1);

-- Pr�ba wprowadzenia daty wydania, kt�ra jest p�niejsza ni� aktualna
INSERT INTO Licencje VALUES(GETDATE()+5, GETDATE()+365, 'AM', 5);

-- Pr�ba wprowadzenia daty wa�no�ci, kt�ra jest wcze�niejsza ni� aktualna
INSERT INTO Licencje VALUES(GETDATE()-365, GETDATE()-5, 'AM', 5);

-- Pr�ba wprowadzenia kategorii kt�ra nie jest AM, A1, A2, A, B1, B, B+E, C, C1, C1+E, D, D1, D1+E, D+E, T
INSERT INTO Licencje VALUES(GETDATE()-365, GETDATE()+365, 'X', 5);

------ Tabela Pojazdy ------

-- Pr�ba wprowadzenia numeru rejestracyjengo, kt�ry nie posiada na pocz�tku 3 du�ych liter 
INSERT INTO Pojazdy VALUES('samoch�d osobowy', '0RK7321', GETDATE()+365, 'Toyota', 'Yaris', 2010);

-- Pr�ba wprowadzenia innego rodzaju pojazdu ni� samoch�d osobowy, autobus, motocykl, samoch�d ci�arowy
INSERT INTO Pojazdy VALUES('X', 'KBR9056', GETDATE()+365, 'Toyota', 'Yaris', 2010);

-- Pr�ba wprowadzenia daty przegl�du, kt�ra jest p�niejsza ni� aktualna
INSERT INTO Pojazdy VALUES('samoch�d osobowy', 'KBR9056', GETDATE()-1, 'Toyota', 'Yaris', 2010);

-- Pr�ba wprowadzenia rocznika kt�ry jest liczb� ujemn�
INSERT INTO Pojazdy VALUES('samoch�d osobowy', 'KBR9056', GETDATE()+365, 'Toyota', 'Yaris', -1);

------ Tabela Szkolenia ------

-- Pr�ba wprowadzenia kursanta, kt�ry ma ju� rozpocz�ty ten sam kurs danej kategorii
INSERT INTO Szkolenia(idKursanta, idKursu) VALUES(1, 1);

-- Pr�ba wprowadzenia daty rozpocz�cia szkolenia, kt�ra jest wcze�niejsza ni� aktualna
INSERT INTO Szkolenia(idKursanta, idKursu, dataRozpoczecia) VALUES(9, 3, GETDATE()-1);

-- Pr�ba wprowadzenia daty zako�czenia szkolenia, kt�ra jest wcze�niejsza ni� data rozpocz�cia
INSERT INTO Szkolenia(idKursanta, idKursu, dataRozpoczecia, dataZakonczenia) VALUES(9, 3, GETDATE()+2, GETDATE()+1);
