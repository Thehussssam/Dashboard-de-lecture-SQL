CREATE DATABASE blog_platform;
USE blog_platform;

CREATE TABLE Membre(
    id_membre INT AUTO_INCREMENT PRIMARY KEY,
    nom_membre VARCHAR(30) NOT NULL
);

CREATE TABLE Publication(
    id_publication INT AUTO_INCREMENT PRIMARY KEY,
    titre_publication VARCHAR(60) NOT NULL,
    nom_auteur VARCHAR(40),
    texte TEXT NOT NULL,
    date_publication DATE,
    nombre_vues INT,
    id_membre INT NOT NULL,
    FOREIGN KEY (id_membre) REFERENCES Membre(id_membre)
);

INSERT INTO Membre (id_membre, nom_membre)
VALUES
(1,'Hamza'),
(2,'Salma'),
(3,'Younes'),
(4,'Imane');

INSERT INTO Publication (id_publication, titre_publication, nom_auteur, texte, date_publication, nombre_vues, id_membre)
VALUES
(1, 'Bases de Python', 'Salma','Apprendre les fondamentaux du langage Python', '2024-03-12', 160, 2),
(2, 'CSS Avancé', 'Hamza','Techniques avancées pour le design web moderne', '2024-10-05', 210, 1),
(3, 'Java moderne', 'Younes','Programmation orientée objet en Java', '2024-06-22', 185, 3),
(4, 'Vue.js débutant', 'Hamza','Créer des interfaces web avec Vue.js', '2023-12-01', 295, 1);

START TRANSACTION;

INSERT INTO Publication (titre_publication, nom_auteur, texte, date_publication, nombre_vues, id_membre)
VALUES ('Spring Boot', 'Imane', 'Développement backend avec Spring Boot', '2025-11-20', 18, 4);

UPDATE Membre
SET nom_membre = 'Imane Zahra'
WHERE id_membre = 4;

COMMIT;