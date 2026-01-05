CREATE DATABASE blog_articles_db;
USE blog_articles_db;

CREATE TABLE Post(
    post_id INT AUTO_INCREMENT PRIMARY KEY,
    titre_post VARCHAR(150) NOT NULL,
    redacteur VARCHAR(60),
    description TEXT NOT NULL,
    date_creation DATE,
    nb_lectures INT DEFAULT 0
);

INSERT INTO Post (titre_post, redacteur, description, date_creation, nb_lectures)
VALUES
('Découvrir MySQL', 'Youssef', 'Introduction pratique à MySQL pour les débutants', '2024-02-10', 98),
('Fonctions SQL utiles', 'Amina', 'Utilisation des fonctions COUNT, SUM et AVG en SQL', '2024-04-05', 143),
('Sécurité des bases de données', 'Youssef', 'Bonnes pratiques pour sécuriser une base de données', '2024-07-19', 67),
('Index et performances', 'Sara', 'Comment les index améliorent les performances des requêtes', '2024-10-02', 184);

SELECT * FROM Post;

SELECT COUNT(*) AS nombre_total FROM Post;

SELECT MAX(date_creation) AS derniere_date FROM Post;

SELECT redacteur, COUNT(*) AS nombre_posts
FROM Post
GROUP BY redacteur
HAVING COUNT(*) >= 2;

SELECT AVG(nb_lectures) AS moyenne_lectures FROM Post;

SELECT redacteur, SUM(nb_lectures) AS total_lectures
FROM Post
GROUP BY redacteur
ORDER BY total_lectures DESC;