CREATE DATABASE user_management;
USE user_management;

CREATE TABLE Compte(
    id_compte INT AUTO_INCREMENT PRIMARY KEY,
    nom_utilisateur VARCHAR(30) NOT NULL,
    adresse_email VARCHAR(120) UNIQUE,
    mot_secret VARCHAR(200)
);

INSERT INTO Compte (nom_utilisateur, adresse_email, mot_secret)
VALUES
('Yassine', 'yassine@mail.com', 'ys123'),
('Nadia', 'nadia@mail.com', 'nd456'),
('Omar', 'omar@mail.com', 'om789');

SELECT * FROM Compte;