CREATE DATABASE IF NOT EXISTS edu_platform_db;
USE edu_platform_db;

CREATE TABLE IF NOT EXISTS Membre(
    membre_id INT AUTO_INCREMENT PRIMARY KEY,
    nom_membre VARCHAR(60) NOT NULL,
    date_inscription TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Publication(
    publication_id INT AUTO_INCREMENT PRIMARY KEY,
    titre_publication VARCHAR(120) NOT NULL,
    texte TEXT NOT NULL,
    date_publication DATE NOT NULL,
    nb_vues INT DEFAULT 0,
    id_membre INT NOT NULL,
    CONSTRAINT fk_publication_membre FOREIGN KEY (id_membre)
        REFERENCES Membre(membre_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    INDEX idx_membre (id_membre),
    INDEX idx_date_publication (date_publication)
);

INSERT INTO Membre (nom_membre) VALUES
('Yassine'),
('Salma'),
('Omar'),
('Nour');

INSERT INTO Publication (titre_publication, texte, date_publication, nb_vues, id_membre) VALUES
('Bases de données', 'Introduction aux bases de données relationnelles', '2024-01-12', 15, 1),
('SQL avancé', 'Jointures, sous-requêtes et index', '2024-11-03', 22, 2),
('Normalisation', 'Comprendre les formes normales', '2025-02-18', 9, 1),
('Sécurité SQL', 'Protection contre les injections SQL', '2023-09-27', 31, 3);

SELECT p.titre_publication, m.nom_membre AS auteur
FROM Publication p
INNER JOIN Membre m ON p.id_membre = m.membre_id
WHERE m.nom_membre = 'Yassine';

SELECT 
    p.titre_publication,
    p.date_publication,
    m.nom_membre AS auteur
FROM Publication p
INNER JOIN Membre m ON p.id_membre = m.membre_id
ORDER BY p.date_publication DESC;