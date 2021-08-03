* THEATER WEB APP PROJECT - CS4436 *

Author : 
Huong Nguyen - HTN190008
Thinh Nguyen - BXN190007

Instruction:

1. Create database MovieDB with username = "scott", password = "tiger" using MovieDB.sql using MovieDB.sql

2. Clean and build project "Theater". Run the project.

3. CHOOSE THEATER FROM ZIPCODE LIST :

75098 75040  75032  75240  75044

4. SELECT MOVIE TO GO TO MOVIE DETAILS PAGE THEN PROCEED TO CHECKOUT

5. IN CHECKOUT, FILL OUT CARD NUMBER BOX (16 NUMBERS) AND OTHER EMPTY BOXES.
CHOOSE TIME AND SELECT NUMBER OF TICKETS YOU WANT TO BUY THEN HIT PURCHASE TO 
COMPLETE THE TRANSACTION.

6. CLICK "HOME" IN THE TOP LEFT CORNER ANYTIME TO RETURN TO THE THEATER SEARCH PAGE

Web flow screenshots are in Screenshots folder.


Files:

- Web: 
	index.xhtml: contains input form for zip code 
	theater.xhtml: display theater with zip code and all movies available at the theater
	movie.xhtml: detail for each movie
	checkout.xhtml: allow user to add ticket and input payment info
	thankyou.xhtml: thank you page

- Bean:
	bean:
		ShowTheaterBean.java: redirect from index page to theater page with correct zip code. Perform validation for zip code.
		ShowMovieBean.java: redirect to movie page. display detail information for each movie.
		PaymentBean.java: redirect to checkout and thank you page. Allows user to perform payment input. Perform validation for credit card number.

	ejb:
		TheaterEJB.java: contains methods to get data from DB
	entity:
		Movie.java - entity for movie
		Theater.java - entity for theater
		TheaterMovie.java - entity for theatermovie
- CSS files & javascript files.