CREATE TABLE MOVIE (MOVIEID INTEGER NOT NULL, TITILE VARCHAR(50) NOT NULL, GENRE VARCHAR(50) NOT NULL, DESCRIPTION VARCHAR(1000) NOT NULL, CASTS VARCHAR(100) NOT NULL, DIRECTOR VARCHAR(50) NOT NULL, YEARMAKE VARCHAR(4) NOT NULL, DURATION VARCHAR(10) NOT NULL, POSTER VARCHAR(20) NOT NULL, TIME1 VARCHAR(10) NOT NULL, TIME2 VARCHAR(10) NOT NULL, TIME3 VARCHAR(10) NOT NULL, PRIMARY KEY (MOVIEID));

CREATE TABLE THEATER (THEATERID INTEGER NOT NULL, THEATERNAME VARCHAR(50) NOT NULL, ADDRESS VARCHAR(50) NOT NULL, CITY VARCHAR(20) NOT NULL, "STATE" VARCHAR(2) NOT NULL, ZIPCODE VARCHAR(5) NOT NULL, PRIMARY KEY (THEATERID));

CREATE TABLE THEATERMOVIE (THEATERID INTEGER NOT NULL, MOVIEID INTEGER NOT NULL, PRIMARY KEY (THEATERID, MOVIEID));

INSERT INTO SCOTT.THEATER (THEATERID, THEATERNAME, ADDRESS, CITY, "STATE", ZIPCODE) 
	VALUES (1, 'B&B Theatres Wylie', '711 Woodbridge Pkwy', 'Wylie', 'TX', '75098');
INSERT INTO SCOTT.THEATER (THEATERID, THEATERNAME, ADDRESS, CITY, "STATE", ZIPCODE) 
	VALUES (2, 'AMC Firewheel 18', '100 Coneflower Dr', 'Garland', 'TX', '75040');
INSERT INTO SCOTT.THEATER (THEATERID, THEATERNAME, ADDRESS, CITY, "STATE", ZIPCODE) 
	VALUES (3, 'Cinemark 14 Rockwall and XD', '2125 Summer Lee Dr', 'Rockwall', 'TX', '75032');
INSERT INTO SCOTT.THEATER (THEATERID, THEATERNAME, ADDRESS, CITY, "STATE", ZIPCODE) 
	VALUES (4, 'AMC Valley View 16', '13331 Preston Rd #2300', 'Dallas', 'TX', '75240');
INSERT INTO SCOTT.THEATER (THEATERID, THEATERNAME, ADDRESS, CITY, "STATE", ZIPCODE) 
	VALUES (5, 'Strike + Reel', '5902 N President George Bush Hwy', 'Garland', 'TX', '75044');

INSERT INTO SCOTT.MOVIE (MOVIEID, TITILE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (1, 'Joe Bell', 'Drama', 'From filmmaker Reinaldo Marcus Green (MONSTERS AND MEN; upcoming KING RICHARD), along with the Academy Award-winning writing team behind BROKEBACK MOUNTAIN (Diana Ossana & Larry McMurtry) and Academy Award nominee Mark Wahlberg, JOE BELL tells the intimate and emotional true story of an Oregonian father who pays tribute to his gay teenage son Jadin, embarking on a self-reflective walk across America to speak his heart to heartland citizens about the real and terrifying costs of bullying', 'Mark Wahlberg, Connie Britton, Gary Sinise', 'Reinaldo Marcus Green', '2021', '1 HR 33 M', 'joebell.jpg', '10:00 AM', '1:15 PM', '10:00 PM');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITILE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (2, 'Escape Room: Tournament of Champions (2021)', 'Action/Adventure, Horor', 'Tournament of Champions is the sequel to the box office hit psychological thriller that terrified audiences around the world. In this installment, six people unwittingly find themselves locked in another series of escape rooms, slowly uncovering what they have in common to survive???and discovering they???ve all played the game before.', 'Taylor Russell, Logan Miller, Isabelle Fuhrman', 'Adam Robitel', '2021', '1 HR 28 M', 'escaperoom.jpg', '1:05 PM', '3:30 PM', '10:30 PM');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITILE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (3, 'Black Widow', 'Action/Adventure', 'In Marvel Studios??? action-packed spy thriller ???Black Widow,??? Natasha Romanoff a.k.a. Black Widow confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises. Pursued by a force that will stop at nothing to bring her down, Natasha must deal with her history as a spy and the broken relationships left in her wake long before she became an Avenger.', 'Scarlett Johansson, Rachel Weisz, Florence Pugh', 'Cate Shortland', '2021', '2 HR 13 M', 'blackwidow.jpg', '2:50 PM', '4:30 PM', '7:45 PM');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITILE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (4, 'A Quiet Place Part II ', 'Suspense/Thriller', 'Following the deadly events at home, the Abbott family (Emily Blunt, Millicent Simmonds, Noah Jupe) must now face the terrors of the outside world as they continue their fight for survival in silence. Forced to venture into the unknown, they quickly realize that the creatures that hunt by sound are not the only threats that lurk beyond the sand path. ', 'Emily Blunt, Cillian Murphy, Millicent Simmonds', 'John Krasinski', '2021', '1 HR 37 M', 'aquietplace2.jpg', '2:50 PM', '7:50 PM', '10:20PM');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITILE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (5, 'RoadRunner: A Film About Anthony Bourdain', 'Documentary', 'It???s not where you go. It???s what you leave behind . . . Chef, writer, adventurer, provocateur: Anthony Bourdain lived his life unabashedly. Roadrunner: A Film About Anthony Bourdain is an intimate, behind-the-scenes look at how an anonymous chef became a world-renowned cultural icon. From Academy Award??-winning filmmaker Morgan Neville (20 Feet From Stardom, Won???t You Be My Neighbor?), this unflinching look at Bourdain reverberates with his presence, in his own voice and in the way he indelibly impacted the world around him.', 'Anthony Bourdain', 'Anthony Bourdain', '2021', '1 HR 59 M ', 'roadrunner.jpg', '1:05 PM', '4:00 PM', '9:45 PM');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITILE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (6, 'The Green Knight', 'Adventure', 'An epic fantasy adventure based on the timeless Arthurian legend, The Green Knight tells the story of Sir Gawain (Dev Patel) who embarks on a daring quest to confront a gigantic emerald-skinned stranger and tester of men. From visionary filmmaker David Lowery comes a fresh and bold spin on a classic tale from the knights of the round table.', 'Joel Edgerton, Dev Patel, Alicia Vikander', 'David Lowery', '2021', '2 HR 01 M', 'greenknight.jpg', '12:00 PM', '2:15 PM', '5:00 PM');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITILE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (7, 'Stillwater', 'Drama', 'A dramatic thriller directed by Academy Award?? winner Tom McCarthy and starring Matt Damon, Stillwater follows an American oil-rig roughneck from Oklahoma who travels to Marseille to visit his estranged daughter, in prison for a murder she claims she did not commit. Confronted with language barriers, cultural differences, and a complicated legal system, Bill builds a new life for himself in France as he makes it his personal mission to exonerate his daughter.', 'Abigail Breslin, Matt Damon, Moussa Maaskri', 'Tom McCarthy', '2021', '2 HR 19 M', 'stillwater.jpg', '10:00 AM', '1:30 PM', '4:00 PM');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITILE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (8, 'F9 The Fast Saga', 'Action', 'F9 is the ninth chapter in the saga that has endured for almost two decades and has earned more than $5 billion around the world. Vin Diesel''s Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he''s going to save those he loves most. His crew joins together to stop a world-shattering plot led by the most skilled assassin and high-performance driver they''ve ever encountered: a man who also happens to be Dom''s forsaken brother, Jakob (John Cena, next year''s The Suicide Squad). F9 sees the return of Justin Lin as director, who helmed the third, fourth, fifth and sixth chapters of the series when it transformed into a global blockbuster.', 'John Cena, Vin Diesel, Shea Whigham', 'Justin Lin', '2021', '2 HR 25 M', 'fastsaga.jpg', '6:15 PM', '7:00 PM', '9:30 PM');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITILE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (9, 'The Forever Purge', 'Horror', 'Following the record-breaking success of 2018''s The First Purge, which became the highest-grossing film in the notorious horror series, Blumhouse Productions and Platinum Dunes returns with a terrifying new chapter, written by franchise creator and narrative mastermind James DeMonaco (writer/director of The Purge, The Purge: Anarchy and The Purge: Election Year). The Forever Purge is directed by Everardo Gout, writer-director of the award-winning thriller Days of Grace. The film is produced by the series'' founding producers: Jason Blum for his Blumhouse Productions; Platinum Dunes partners Michael Bay, Andrew Form and Brad Fuller; and Man in a Tree duo James DeMonaco and his longtime producing partner Sebastien K. Lemercier. The film''s executive producers are Marcei A. Brown, Couper Samuelson and Jeanette Volturno.', 'Ana dela Reguera, Will Patton, Tenoch Huerta', 'Everardo Valerio Gout', '2021', '1 HR 43 M', 'foreverpurge.jpg', '6:30 PM', '8:00 PM', '11:00 PM');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITILE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (10, 'Jungle Cruise', 'Adventure', 'Inspired by the famous Disneyland theme park ride, Disney???s ???Jungle Cruise??? is an adventure-filled, rollicking thrill-ride down the Amazon with wisecracking skipper Frank Wolff and intrepid researcher Dr. Lily Houghton. Lily travels from London, England to the Amazon jungle and enlists Frank???s questionable services to guide her downriver on La Quila???his ramshackle-but-charming boat. Lily is determined to uncover an ancient tree with unparalleled healing abilities???possessing the power to change the future of medicine. Thrust on this epic quest together, the unlikely duo encounters innumerable dangers and supernatural forces, all lurking in the deceptive beauty of the lush rainforest. But as the secrets of the lost tree unfold, the stakes reach even higher for Lily and Frank and their fate???and mankind???s???hangs in the balance.', 'Emily Blunt, Jesse Plemons, Dwayne Johnson', 'Jaume Collet-Serra', '2021', '2 HR 07 M', 'junglecruise.jpg', '11:15 PM', '2:00 PM', '5:30 PM');


INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 1);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 2);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 3);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 4);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 6);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 8);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 9);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (2, 3);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (2, 4);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (2, 5);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (2, 6);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (2, 7);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (2, 10);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 1);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 2);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 3);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 5);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 6);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 7);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 8);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 10);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (4, 1);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (4, 2);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (4, 5);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (4, 6);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (4, 7);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (5, 1);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (5, 4);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (5, 6);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (5, 7);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (5, 8);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (5, 9);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (5, 10);
