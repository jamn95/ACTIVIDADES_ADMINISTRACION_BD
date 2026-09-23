USE mydb;


INSERT INTO USER (idUSER, FIRTS_NAME, LAST_NAME, PHYSICAL_ADDRESS, SALUTATION) VALUES
(1, 'Janet', 'Jones', 'First Street Plot No 4', 'Ms.'),
(2, 'Robert', 'Phil', '3rd Street 34', 'Mr.');


INSERT INTO MOVIE (idMOVIE, MOVIE_NAME) VALUES
(1, 'Pirates of the Caribbean'),
(2, 'Clash of the Titans'),
(3, 'Forgetting Sarah Marshal'),
(4, 'Daddy\'s Little Girls');


INSERT INTO MOVIES_RENTED (idMOVIES_RENTED, USER_idUSER, MOVIE_idMOVIE) VALUES
(1, 1, 1), 
(2, 1, 2), 
(3, 2, 3), 
(4, 2, 4), 
(5, 2, 2); 