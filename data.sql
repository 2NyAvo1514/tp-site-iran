-- ==========================================
-- DONNEES DE TEST
-- ==========================================

-- TYPES DE CONTENU
INSERT INTO type_contenu (libelle) VALUES
('Actualité'),
('Analyse'),
('Chronologie'),
('Armes militaires'),
('Impact économique');


-- TAGS
INSERT INTO tag (libelle) VALUES
('Iran'),
('Israel'),
('Missiles'),
('Drones'),
('Petrole'),
('Geopolitique');


-- CONTENUS
INSERT INTO contenu (id_type, titre, slug, details)
VALUES
(1,
'Attaque de missiles en Iran',
'attaque-missiles-iran',
'Une attaque de missiles a été signalée dans plusieurs zones stratégiques.'
),

(2,
'Les drones militaires iraniens',
'drones-militaires-iraniens',
'Analyse des drones utilisés par les forces iraniennes.'
),

(3,
'Chronologie du conflit Iran Israël',
'chronologie-conflit-iran-israel',
'Résumé des événements majeurs du conflit.'
);


-- IMAGES
INSERT INTO image (id_contenu, url)
VALUES
(1, 'images/missile1.jpg'),
(1, 'images/missile2.jpg'),
(2, 'images/drone1.jpg'),
(3, 'images/map1.jpg');


-- RELATION CONTENU TAG
INSERT INTO contenu_tag (id_contenu, id_tag)
VALUES
(1,1),
(1,3),
(2,1),
(2,4),
(3,1),
(3,2),
(3,6);

INSERT INTO admin (login, pswd)
VALUES ('admin', '$2y$10$06uhmy/BV5X1.oO1CmdateLqp2RrrIVmHfkQfNSVGt8jL01x7As9u');


-- CONTENU 1
UPDATE contenu
SET details = 'Une attaque de missiles a ete signalee dans plusieurs zones strategiques du territoire iranien au cours des dernieres heures. Selon des sources locales et internationales, plusieurs installations sensibles ont ete ciblees, notamment des bases militaires, des centres de communication et certaines infrastructures logistiques essentielles au fonctionnement des forces armees. Les explosions ont provoque des degats materiels importants ainsi qu un climat de panique au sein de la population civile vivant a proximite des zones touchees.

Les autorites iraniennes ont rapidement deploye des equipes de secours ainsi que des unites de defense pour evaluer l ampleur des destructions et assurer la securite des habitants. Des mesures d urgence ont ete mises en place, incluant la fermeture temporaire de certaines zones et le renforcement de la surveillance aerienne. Par ailleurs, cette attaque a entraine une hausse immediate des tensions dans la region, plusieurs pays exprimant leur inquietude face a une possible escalation du conflit.

Sur le plan international, cette situation a suscite de nombreuses reactions diplomatiques. Certains Etats appellent a la retenue et a la desescalade, tandis que d autres condamnent fermement cette action en demandant des explications. Cette attaque pourrait marquer un tournant important dans le contexte geopolitique actuel, avec des consequences potentiellement durables sur la stabilite regionale et les relations entre les puissances impliquees.'
WHERE slug = 'attaque-missiles-iran';


-- CONTENU 2
UPDATE contenu
SET details = 'Les drones militaires iraniens jouent aujourd hui un role central dans la strategie de defense et de projection de puissance du pays. Ces appareils sans pilote, egalement appeles UAV, sont utilises pour une grande variete de missions allant de la surveillance a la reconnaissance, en passant par des operations offensives ciblees. Leur utilisation permet de reduire les risques humains tout en offrant une capacite d intervention rapide et precise sur differents theatres d operation.

Au fil des annees, l Iran a investi de maniere significative dans le developpement de ses technologies de drones. Plusieurs modeles ont ete concus, chacun ayant des caracteristiques specifiques en termes d autonomie, de capacite de charge et de precision. Certains drones sont capables de parcourir de longues distances, de collecter des informations en temps reel et de transmettre des donnees strategiques aux centres de commandement.

Cette evolution technologique attire l attention de la communaute internationale, notamment en raison de son impact sur l equilibre militaire dans certaines regions sensibles. Les drones iraniens sont souvent cites dans des rapports d analyse militaire comme etant des outils efficaces dans les conflits asymetriques. Leur utilisation souleve egalement des questions sur la regulation de ces technologies et sur les enjeux ethique lies a la guerre moderne.'
WHERE slug = 'drones-militaires-iraniens';


-- CONTENU 3
UPDATE contenu
SET details = 'Le conflit entre l Iran et Israel s inscrit dans une longue histoire de rivalites politiques, ideologiques et militaires au Moyen Orient. Depuis plusieurs decennies, les relations entre les deux pays sont marquees par une forte hostilite, caracterisee par des discours opposes, des actions indirectes et des confrontations strategiques dans differentes zones de la region.

Cette chronologie permet de retracer les principales etapes de ce conflit complexe. Elle commence par les premiers signes de tension, notamment apres certains changements politiques majeurs dans la region, puis evolue vers des affrontements indirects impliquant des allies et des groupes interposes. Au fil du temps, les incidents se sont multiplies, incluant des attaques ciblees, des operations secretes et des demonstrations de force militaire.

Les evenements recents montrent une intensification des tensions, avec des actions plus visibles et des prises de position plus fermes de la part des deux camps. Cette situation preoccupe fortement la communaute internationale, qui craint une escalation pouvant mener a un conflit ouvert. Comprendre cette chronologie est essentiel pour analyser les enjeux actuels et anticiper les evolutions futures de cette rivalite qui influence fortement l equilibre geopolitique de la region.'
WHERE slug = 'chronologie-conflit-iran-israel';