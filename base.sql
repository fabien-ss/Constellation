-- création de la base de données
CREATE DATABASE etoile;

-- sélection de la base de données
\c etoile;

-- création de la table des constellations
CREATE TABLE constellations (
  id SERIAL PRIMARY KEY,
  nom VARCHAR(50) NOT NULL,
  type VARCHAR(50),
  taille VARCHAR(20),
  description TEXT
);

-- création de la table des étoiles
CREATE TABLE etoiles (
  id SERIAL PRIMARY KEY,
  nom VARCHAR(50) NOT NULL,
  magnitude NUMERIC(3,1),
  distance NUMERIC(10,2),
  constellation_id INTEGER REFERENCES constellations(id),
  description TEXT
);

-- Insertion de données dans la table constellations
INSERT INTO constellations (nom, type, taille, description)
VALUES 
('Andromède', 'Constellation d''automne', 'Moyenne', 'Andromède est une constellation visible dans l''hémisphère nord, souvent associée à la légende de Persée.'),
('Bélier', 'Constellation du zodiaque', 'Petite', 'Bélier est une constellation du zodiaque, visible principalement dans l''hémisphère nord.'),
('Cancer', 'Constellation du zodiaque', 'Moyenne', 'Cancer est une constellation du zodiaque, visible principalement dans l''hémisphère nord.'),
('Capricorne', 'Constellation du zodiaque', 'Moyenne', 'Capricorne est une constellation du zodiaque, visible principalement dans l''hémisphère sud.'),
('Cygne', 'Constellation d''été', 'Grande', 'Cygne est une constellation d''été visible dans l''hémisphère nord.'),
('Dragon', 'Constellation circumpolaire', 'Grande', 'Dragon est une constellation circumpolaire visible principalement dans l''hémisphère nord.'),
('Éridan', 'Constellation d''hiver', 'Grande', 'Éridan est une constellation visible dans l''hémisphère sud, associée à la légende de Phaéton.'),
('Grand Chien', 'Constellation d''hiver', 'Grande', 'Grand Chien est une constellation d''hiver visible dans l''hémisphère sud.');

-- Insertion de données dans la table etoiles
INSERT INTO etoiles (nom, magnitude, distance, constellation_id, description)
VALUES
('Alpheratz', 2.07, 97.8, 1, 'Alpheratz est une étoile binaire dans la constellation d''Andromède.'),
('Hamal', 2.01, 65, 2, 'Hamal est une étoile rouge géante dans la constellation du Bélier.'),
('Acubens', 4.25, 173, 3, 'Acubens est une étoile binaire dans la constellation du Cancer.'),
('Deneb Algedi', 2.81, 39.8, 4, 'Deneb Algedi est une étoile binaire dans la constellation du Capricorne.'),
('Deneb', 1.25, 2, 5, 'Deneb est une étoile supergéante dans la constellation du Cygne.'),
('Thuban', 3.67, 308, 6, 'Thuban est une étoile binaire dans la constellation du Dragon.'),
('Achernar', 0.45, 139, 7, 'Achernar est une étoile bleue dans la constellation d''Éridan.'),
('Sirius', -1.46, 8.6, 8, 'Sirius est l''étoile la plus brillante du ciel nocturne et fait partie de la constellation du Grand Chien.');

-- Andromède
INSERT INTO etoiles (nom, magnitude, distance, constellation_id, description)
VALUES 
('Mirach', 2.07, 97.8, 1, 'Mirach est une étoile rouge géante dans la constellation d''Andromède.'),
('Almach', 2.02, 350, 1, 'Almach est une étoile multiple dans la constellation d''Andromède.'),
('Mu Andromedae', 3.86, 174, 1, 'Mu Andromedae est une étoile binaire dans la constellation d''Andromède.'),
('Zeta Andromedae', 4.08, 210, 1, 'Zeta Andromedae est une étoile binaire dans la constellation d''Andromède.'),
('51 Andromedae', 3.57, 170, 1, '51 Andromedae est une étoile multiple dans la constellation d''Andromède.'),
('R Andromedae', 4.85, 235, 1, 'R Andromedae est une étoile variable de type Mira dans la constellation d''Andromède.'),
('RX J0019.8+2156', 23.2, 625, 1, 'RX J0019.8+2156 est une étoile naine rouge dans la constellation d''Andromède.'),
('Gliese 876', 10.2, 15.3, 1, 'Gliese 876 est une étoile naine rouge dans la constellation d''Andromède.'),
('WASP-52', 11.5, 296.1, 1, 'WASP-52 est une étoile de type F dans la constellation d''Andromède.'),
('Kepler-87', 10.7, 945, 1, 'Kepler-87 est une étoile de type G dans la constellation d''Andromède.');

-- Bélier
INSERT INTO etoiles (nom, magnitude, distance, constellation_id, description)
VALUES 
('Sharatan', 2.65, 59.3, 2, 'Sharatan est une étoile binaire dans la constellation du Bélier.'),
('Mesarthim', 3.41, 198, 2, 'Mesarthim est une étoile binaire dans la constellation du Bélier.'),
('Botein', 4.35, 174, 2, 'Botein est une étoile géante dans la constellation du Bélier.'),
('41 Arietis', 5.72, 179, 2, '41 Arietis est une étoile multiple dans la constellation du Bélier.'),
('HD 20367', 5.8, 449, 2, 'HD 20367 est une étoile de type G dans la constellation du Bélier.'),

-- Bélier (suite)
INSERT INTO etoiles (nom, magnitude, distance, constellation_id, description)
VALUES
('GJ 581', 10.6, 20.4, 2, 'GJ 581 est une étoile naine rouge dans la constellation du Bélier.'),
('V430 Arietis', 7.18, 841, 2, 'V430 Arietis est une étoile variable de type Mira dans la constellation du Bélier.'),
('V396 Arietis', 8.09, 412, 2, 'V396 Arietis est une étoile variable de type Delta Scuti dans la constellation du Bélier.');

-- Cancer
INSERT INTO etoiles (nom, magnitude, distance, constellation_id, description)
VALUES
('Acubens', 4.25, 174, 3, 'Acubens est une étoile multiple dans la constellation du Cancer.'),
('Beta Cancri', 3.52, 180, 3, 'Beta Cancri est une étoile multiple dans la constellation du Cancer.'),
('Asellus Australis', 4.67, 41.2, 3, 'Asellus Australis est une étoile multiple dans la constellation du Cancer.'),
('Asellus Borealis', 4.3, 53.8, 3, 'Asellus Borealis est une étoile multiple dans la constellation du Cancer.'),
('Delta Cancri', 3.94, 180, 3, 'Delta Cancri est une étoile multiple dans la constellation du Cancer.'),
('Epsilon Cancri', 6.29, 610, 3, 'Epsilon Cancri est une étoile double dans la constellation du Cancer.'),
('HD 6434', 8.13, 227.3, 3, 'HD 6434 est une étoile de type K dans la constellation du Cancer.'),
('GJ 414B', 16.73, 28.5, 3, 'GJ 414B est une étoile naine rouge dans la constellation du Cancer.'),
('QY Cancer', 13.28, 1557, 3, 'QY Cancer est une étoile de type M dans la constellation du Cancer.'),
('V396 Cancri', 8.56, 415, 3, 'V396 Cancri est une étoile variable de type Delta Scuti dans la constellation du Cancer.');

-- Cassiopée
INSERT INTO etoiles (nom, magnitude, distance, constellation_id, description)
VALUES
('Caph', 2.28, 54, 4, 'Caph est une étoile binaire dans la constellation de Cassiopée.'),
('Schedar', 2.24, 229, 4, 'Schedar est une étoile géante dans la constellation de Cassiopée.'),
('Gamma Cassiopeiae', 2.15, 616, 4, 'Gamma Cassiopeiae est une étoile variable de type Be dans la constellation de Cassiopée.'),
('Delta Cassiopeiae', 2.68, 99, 4, 'Delta Cassiopeiae est une étoile binaire dans la constellation de Cassiopée.'),
('Rho Cassiopeiae', 4.54, 443, 4, 'Rho Cassiopeiae est une étoile géante dans la constellation de Cassiopée.'),

INSERT INTO etoiles (nom, magnitude, distance, constellation_id, description)
VALUES
('Eta Cassiopeiae', 3.44, 19.4, 4, 'Eta Cassiopeiae est une étoile multiple dans la constellation de Cassiopée.'),
('Iota Cassiopeiae', 4.6, 512, 4, 'Iota Cassiopeiae est une étoile géante dans la constellation de Cassiopée.'),
('Kappa Cassiopeiae', 4.16, 397, 4, 'Kappa Cassiopeiae est une étoile binaire dans la constellation de Cassiopée.'),
('Ruchbah', 2.68, 99, 4, 'Ruchbah est une étoile géante dans la constellation de Cassiopée.'),
('Shedir', 2.24, 229, 4, 'Shedir est une étoile géante dans la constellation de Cassiopée.'),
('Theta Cassiopeiae', 4.83, 410, 4, 'Theta Cassiopeiae est une étoile géante dans la constellation de Cassiopée.'),
('Upsilon Cassiopeiae', 4.63, 86, 4, 'Upsilon Cassiopeiae est une étoile binaire dans la constellation de Cassiopée.'),
('V335 Cassiopeiae', 8.88, 2027, 4, 'V335 Cassiopeiae est une étoile variable de type Mira dans la constellation de Cassiopée.'),
('V452 Cassiopeiae', 7.44, 446, 4, 'V452 Cassiopeiae est une étoile variable de type SRd dans la constellation de Cassiopée.'),
('V509 Cassiopeiae', 5.74, 460, 4, 'V509 Cassiopeiae est une étoile variable de type Delta Scuti dans la constellation de Cassiopée.');

-- Dragon
INSERT INTO etoiles (nom, magnitude, distance, constellation_id, description)
VALUES
('Aldhibah', 3.17, 309, 5, 'Aldhibah est une étoile géante dans la constellation du Dragon.'),
('Eltanin', 2.24, 148, 5, 'Eltanin est une étoile géante dans la constellation du Dragon.'),
('Rastaban', 2.76, 380, 5, 'Rastaban est une étoile géante dans la constellation du Dragon.'),
('Thuban', 3.65, 303, 5, 'Thuban est une étoile géante dans la constellation du Dragon.'),
('Chi Draconis', 3.57, 97, 5, 'Chi Draconis est une étoile binaire dans la constellation du Dragon.'),
('Kappa Draconis', 3.87, 154, 5, 'Kappa Draconis est une étoile géante dans la constellation du Dragon.'),
('Nu Draconis', 4.87, 104, 5, 'Nu Draconis est une étoile binaire dans la constellation du Dragon.'),
('Omicron Draconis', 4.59, 163, 5, 'Omicron Draconis est une étoile géante dans la constellation du Dragon.'),


-- de la constellation du Dragon.
('Rho Draconis', 4.51, 330, 5, 'Rho Draconis est une étoile géante dans la constellation du Dragon.'),
('Theta Draconis', 4.01, 347, 5, 'Theta Draconis est une étoile géante dans la constellation du Dragon.'),
('Xi Draconis', 3.73, 104, 5, 'Xi Draconis est une étoile binaire dans la constellation du Dragon.'),
('Zeta Draconis', 3.17, 346, 5, 'Zeta Draconis est une étoile géante dans la constellation du Dragon.');

-- Cygnus
INSERT INTO etoiles (nom, magnitude, distance, constellation_id, description)
VALUES
('Albireo', 2.9, 380, 6, 'Albireo est une étoile double dans la constellation du Cygne.'),
('Deneb', 1.25, 2600, 6, 'Deneb est une étoile supergéante dans la constellation du Cygne.'),
('Gienah', 2.48, 72, 6, 'Gienah est une étoile géante dans la constellation du Cygne.'),
('Sadr', 2.23, 1800, 6, 'Sadr est une étoile géante dans la constellation du Cygne.'),
('Delta Cygni', 2.85, 171, 6, 'Delta Cygni est une étoile binaire dans la constellation du Cygne.'),
('Epsilon Cygni', 2.48, 72, 6, 'Epsilon Cygni est une étoile géante dans la constellation du Cygne.'),
('Gamma Cygni', 2.2, 154, 6, 'Gamma Cygni est une étoile géante dans la constellation du Cygne.'),
('Kappa Cygni', 3.77, 73, 6, 'Kappa Cygni est une étoile géante dans la constellation du Cygne.'),
('Eta Cygni', 3.89, 233, 6, 'Eta Cygni est une étoile binaire dans la constellation du Cygne.'),
('Iota Cygni', 3.13, 114, 6, 'Iota Cygni est une étoile géante dans la constellation du Cygne.');

-- Orion
INSERT INTO etoiles (nom, magnitude, distance, constellation_id, description)
VALUES
('Alnilam', 1.69, 2000, 7, 'Alnilam est une étoile supergéante dans la constellation d''Orion.'),
('Alnitak', 1.74, 1300, 7, 'Alnitak est une étoile supergéante dans la constellation d''Orion.'),
('Betelgeuse', 0.42, 650, 7, 'Betelgeuse est une étoile supergéante rouge dans la constellation d''Orion.'),
('Bellatrix', 1.64, 243, 7, 'Bellatrix est une étoile géante bleue dans la constellation d''Orion.'),
('Saiph', 2.07, 720, 7, 'Saiph est une étoile supergéante dans la constellation d''Orion.')