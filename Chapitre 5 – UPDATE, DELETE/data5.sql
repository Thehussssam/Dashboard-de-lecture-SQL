CREATE DATABASE account_system;
USE account_system;

CREATE TABLE Profil(
    id_profil INT AUTO_INCREMENT PRIMARY KEY,
    nom_complet VARCHAR(30) NOT NULL,
    adresse_email VARCHAR(120) UNIQUE,
    mot_secret VARCHAR(200)
);

INSERT INTO Profil (nom_complet, adresse_email, mot_secret)
VALUES
('Yassine El Amrani', 'yassine.elamrani@mail.com', 'ys123'),
('Nadia Benali', 'nadia.benali@mail.com', 'nd456'),
('Omar Alaoui', 'omar.alaoui@mail.com', 'om789');

UPDATE Profil
SET nom_complet = 'Yassine El Amrani Jr', adresse_email = 'yassine.jr@mail.com'
WHERE id_profil = 1;

DELETE FROM Profil
WHERE id_profil = 2;