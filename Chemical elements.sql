DROP TABLE IF EXISTS Element CASCADE; 
DROP TABLE IF EXISTS "Spectral line" CASCADE;
CREATE TABLE Element(nam varchar(10) PRIMARY KEY, des varchar(5), num smallint, "group" smallint, atomweight double precision);
CREATE TABLE "Spectral line"(ID serial PRIMARY KEY, "length" double precision, glowrelint smallint, el_nam varchar(10), FOREIGN KEY(el_nam) REFERENCES Element(nam));
INSERT INTO Element VALUES('Aluminum', 'Al', 13, 3, 26.98),
                                                         ('Argon', 'Ar', 18, 8, 39.95),
                                                         ('Barium', 'Ba', 56, 2, 137.34),
                                                         ('Calcium', 'Ca', 20, 2, 40.08),
                                                         ('Carbon', 'C', 6, 4, 12.01),
                                                         ('Helium', 'He', 2, 8, 4),
                                                         ('Hydrogen', 'H', 1, 7, 1),
                                                         ('Iron', 'Fe', 26, 8, 55.85),
                                                         ('Krypton', 'Kr', 36, 8, 83.8),
                                                         ('Lithium', 'Li', 3, 1, 6.94),
                                                         ('Magnesium', 'Mg', 12, 2, 24.31),
                                                         ('Mercury', 'Hg', 80, 2, 200.59),
                                                         ('Neon', 'Ne', 10, 8, 20.18),
                                                         ('Nitrogen', 'N', 7, 5, 14.01),
                                                         ('Oxygen', 'O', 8, 6, 16),
                                                         ('Potassium', 'K', 19, 1, 39.1),
                                                         ('Silicon', 'Si', 14, 4, 28.09),
                                                         ('Sodium', 'Na', 11, 1, 22.99),
                                                         ('Strontium', 'Sr', 38, 2, 87.62),
                                                         ('Sulfur', 'S', 16, 6, 32.06),
                                                         ('Xenon', 'Xe', 54, 8, 131.3);
