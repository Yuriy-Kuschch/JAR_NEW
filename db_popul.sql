	INSERT INTO Roles(role_name) VALUES ('ADMIN');
	INSERT INTO Roles(role_name) VALUES ('WORKER');
	INSERT INTO Roles(role_name) VALUES ('CUSTOMER');

	INSERT INTO Users(first_name,last_name,login,password,birth_date,email,phone,role_id) 
	VALUES
	('Alexander','Nesterenko','zuckonit1','password','1993-05-16','zuckonit1@gmail.com','+380967944484',1),
	('Kiril','Naumov','Kiril111','password','1993-10-12','kiril111@gmail.com','+380501234567',2),
	('Galina','Zaharchuk','galina2','password','1988-12-01','galina2@gmail.com','+380676468066',2),
	('Ignat','Ibragimov','ignat123','password','1980-04-20','ignat@gmail.com','+380967772266',3),
	('Roman','Petrenko','roma1','password','1966-11-02','roman1@gmail.com','+380501234567',3),
	('Nazar','Zarub','user2','password','1970-01-12','user2@gmail.com','+380678256589',3),
	('Mike','Mazur','user3','password','1977-01-21','user3@gmail.com','+380732589631',3),
	('Marshal','Macuh','user4','password','1983-10-12','user4@gmail.com','+380676547892',3),
	('Ivan','Ivanov','user5','password','1993-10-12','user5@gmail.com','+380441236548',3),
	('Adil','Zhalelov','user1','password','1993-05-16','z@gmail.com','+380676468822',3);

	INSERT INTO Book(author,country,language,pages,title,year) 
	VALUES
	("Chinua Achebe","Nigeria","English",209,"Things Fall Apart",1958),("Hans Christian Andersen","Denmark","Danish",784,"Fairy tales",1836),("Dante Alighieri","Italy","Italian",928,"The Divine Comedy",1315),("Unknown","Sumer and Akkadian Empire","Akkadian",160,"The Epic Of Gilgamesh",-1700),("Unknown","Achaemenid Empire","Hebrew",176,"The Book Of Job",-600),("Unknown","India/Iran/Iraq/Egypt/Tajikistan","Arabic",288,"One Thousand and One Nights",1200),("Unknown","Iceland","Old Norse",384,"Nj\u00e1l's Saga",1350),("Jane Austen","United Kingdom","English",226,"Pride and Prejudice",1813),("Honor\u00e9 de Balzac","France","French",443,"Le P\u00e8re Goriot",1835),("Samuel Beckett","Republic of Ireland","French, English",256,"Molloy, Malone Dies, The Unnamable, the trilogy",1952),("Giovanni Boccaccio","Italy","Italian",1024,"The Decameron",1351),("Jorge Luis Borges","Argentina","Spanish",224,"Ficciones",1965),("Emily Bront\u00eb","United Kingdom","English",342,"Wuthering Heights",1847),("Albert Camus","Algeria, French Empire","French",185,"The Stranger",1942),("Paul Celan","Romania, France","German",320,"Poems",1952),("Louis-Ferdinand C\u00e9line","France","French",505,"Journey to the End of the Night",1932),("Miguel de Cervantes","Spain","Spanish",1056,"Don Quijote De La Mancha",1610),("Geoffrey Chaucer","England","English",544,"The Canterbury Tales",1450),("Anton Chekhov","Russia","Russian",194,"Stories",1886),("Joseph Conrad","United Kingdom","English",320,"Nostromo",1904),("Charles Dickens","United Kingdom","English",194,"Great Expectations",1861),("Denis Diderot","France","French",596,"Jacques the Fatalist",1796),("Alfred D\u00f6blin","Germany","German",600,"Berlin Alexanderplatz",1929),("Fyodor Dostoevsky","Russia","Russian",551,"Crime and Punishment",1866),("Fyodor Dostoevsky","Russia","Russian",656,"The Idiot",1869),("Fyodor Dostoevsky","Russia","Russian",768,"The Possessed",1872),("Fyodor Dostoevsky","Russia","Russian",824,"The Brothers Karamazov",1880),("George Eliot","United Kingdom","English",800,"Middlemarch",1871),("Ralph Ellison","United States","English",581,"Invisible Man",1952),("Euripides","Greece","Greek",104,"Medea",-431),("William Faulkner","United States","English",313,"Absalom, Absalom!",1936),("William Faulkner","United States","English",326,"The Sound and the Fury",1929),("Gustave Flaubert","France","French",528,"Madame Bovary",1857),("Gustave Flaubert","France","French",606,"Sentimental Education",1869),("Federico Garc\u00eda Lorca","Spain","Spanish",218,"Gypsy Ballads",1928),("Gabriel Garc\u00eda M\u00e1rquez","Colombia","Spanish",417,"One Hundred Years of Solitude",1967),("Gabriel Garc\u00eda M\u00e1rquez","Colombia","Spanish",368,"Love in the Time of Cholera",1985),("Johann Wolfgang von Goethe","Saxe-Weimar","German",158,"Faust",1832),("Nikolai Gogol","Russia","Russian",432,"Dead Souls",1842),("G\u00fcnter Grass","Germany","German",600,"The Tin Drum",1959),("Jo\u00e3o Guimar\u00e3es Rosa","Brazil","Portuguese",494,"The Devil to Pay in the Backlands",1956),("Knut Hamsun","Norway","Norwegian",176,"Hunger",1890),("Ernest Hemingway","United States","English",128,"The Old Man and the Sea",1952),("Homer","Greece","Greek",608,"Iliad",-735),("Homer","Greece","Greek",374,"Odyssey",-800),("Henrik Ibsen","Norway","Norwegian",68,"A Doll's House",1879),("James Joyce","Irish Free State","English",228,"Ulysses",1922),("Franz Kafka","Czechoslovakia","German",488,"Stories",1924),("Franz Kafka","Czechoslovakia","German",160,"The Trial",1925),("Franz Kafka","Czechoslovakia","German",352,"The Castle",1926),("K\u0101lid\u0101sa","India","Sanskrit",147,"The recognition of Shakuntala",150),("Yasunari Kawabata","Japan","Japanese",288,"The Sound of the Mountain",1954),("Nikos Kazantzakis","Greece","Greek",368,"Zorba the Greek",1946),("D. H. Lawrence","United Kingdom","English",432,"Sons and Lovers",1913),("Halld\u00f3r Laxness","Iceland","Icelandic",470,"Independent People",1934),("Giacomo Leopardi","Italy","Italian",184,"Poems",1818),("Doris Lessing","United Kingdom","English",688,"The Golden Notebook",1962),("Astrid Lindgren","Sweden","Swedish",160,"Pippi Longstocking",1945),("Lu Xun","China","Chinese",389,"Diary of a Madman",1918),("Naguib Mahfouz","Egypt","Arabic",355,"Children of Gebelawi",1959),("Thomas Mann","Germany","German",736,"Buddenbrooks",1901),("Thomas Mann","Germany","German",720,"The Magic Mountain",1924),("Herman Melville","United States","English",378,"Moby Dick",1851),("Michel de Montaigne","France","French",404,"Essays",1595),("Elsa Morante","Italy","Italian",600,"History",1974),("Toni Morrison","United States","English",321,"Beloved",1987),("Murasaki Shikibu","Japan","Japanese",1360,"The Tale of Genji",1006),("Robert Musil","Austria","German",365,"The Man Without Qualities",1931),("Vladimir Nabokov","Russia/United States","English",317,"Lolita",1955),("George Orwell","United Kingdom","English",272,"Nineteen Eighty-Four",1949),("Ovid","Roman Empire","Classical Latin",576,"Metamorphoses",100),("Fernando Pessoa","Portugal","Portuguese",272,"The Book of Disquiet",1928),("Edgar Allan Poe","United States","English",842,"Tales",1950),("Marcel Proust","France","French",2408,"In Search of Lost Time",1920),("Fran\u00e7ois Rabelais","France","French",623,"Gargantua and Pantagruel",1533),("Juan Rulfo","Mexico","Spanish",124,"Pedro P\u00e1ramo",1955),("Rumi","Sultanate of Rum","Persian",438,"The Masnavi",1236),("Salman Rushdie","United Kingdom, India","English",536,"Midnight's Children",1981),("Saadi","Persia, Persian Empire","Persian",298,"Bostan",1257),("Tayeb Salih","Sudan","Arabic",139,"Season of Migration to the North",1966),("Jos\u00e9 Saramago","Portugal","Portuguese",352,"Blindness",1995),("William Shakespeare","England","English",432,"Hamlet",1603),("William Shakespeare","England","English",384,"King Lear",1608),("William Shakespeare","England","English",314,"Othello",1609),("Sophocles","Greece","Greek",88,"Oedipus the King",-430),("Stendhal","France","French",576,"The Red and the Black",1830),("Laurence Sterne","England","English",640,"The Life And Opinions of Tristram Shandy",1760),("Italo Svevo","Italy","Italian",412,"Confessions of Zeno",1923),("Jonathan Swift","Ireland","English",178,"Gulliver's Travels",1726),("Leo Tolstoy","Russia","Russian",1296,"War and Peace",1867),("Leo Tolstoy","Russia","Russian",864,"Anna Karenina",1877),("Leo Tolstoy","Russia","Russian",92,"The Death of Ivan Ilyich",1886),("Mark Twain","United States","English",224,"The Adventures of Huckleberry Finn",1884),("Valmiki","India","Sanskrit",152,"Ramayana",-450),("Virgil","Roman Empire","Classical Latin",442,"The Aeneid",-23),("Vyasa","India","Sanskrit",276,"Mahabharata",-700),("Walt Whitman","United States","English",152,"Leaves of Grass",1855),("Virginia Woolf","United Kingdom","English",216,"Mrs Dalloway",1925),("Virginia Woolf","United Kingdom","English",209,"To the Lighthouse",1927),("Marguerite Yourcenar","France/Belgium","French",408,"Memoirs of Hadrian",1951);


	INSERT INTO Book_Issue(book_id,user_id,issue_date) VALUES
	(1,3,'2020-05-05');