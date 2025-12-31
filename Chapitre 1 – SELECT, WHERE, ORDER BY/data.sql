CREATE DATABASE articles;
USE articles;

CREATE TABLE Article (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(200) NOT NULL,
    contenu TEXT NOT NULL,
    date_de_publication DATE NOT NULL
);

INSERT INTO Article (titre, contenu, date_de_publication) VALUES
('Introduction à SQL', 'Cet article présente les bases du langage SQL et son utilité.', '2023-09-15'),
('La commande SELECT', 'Apprendre à extraire des données depuis une table avec SELECT.', '2024-01-25'),
('Filtrage avec WHERE', 'Utilisation de la clause WHERE pour filtrer les résultats.', '2024-02-18'),
('Tri des données avec ORDER BY', 'Comment trier les résultats par ordre croissant ou décroissant.', '2024-03-22'),
('Limiter les résultats avec LIMIT', 'Afficher un nombre précis de lignes dans les résultats.', '2024-04-30'),
('Requêtes SQL avancées', 'Combinaison de WHERE, ORDER BY et LIMIT dans une seule requête.', '2024-06-05');

SELECT * FROM Article;

SELECT titre, contenu FROM Article;

SELECT titre, date_de_publication
FROM Article
WHERE date_de_publication >= '2024-01-01';

SELECT titre, date_de_publication
FROM Article
ORDER BY date_de_publication DESC;

SELECT titre
FROM Article
ORDER BY date_de_publication DESC
LIMIT 5;