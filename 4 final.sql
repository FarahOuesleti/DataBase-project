CREATE TABLE Oeuvre(IdOeuvre INT , nomOeuvre VARCHAR(20) , DateRealisation DATE);
CREATE TABLE Livres(IdLivre INT, IdOeuvre INT ,Id_auteur INT );
CREATE TABLE Films(IdFilm INT ,IdOeuvre INT );
CREATE TABLE Albums(IdAlbums INT ,IdOeuvre INT );
CREATE TABLE Livre_Film(IdLivres INT ,IdFilm INT );
CREATE TABLE Film_Album(IdFilm INT,IdAlbum INT);
CREATE TABLE Pieces_musicales(IdChant INT,nomChant VARCHAR(20));
CREATE TABLE Album_Pieces_musicales(idChant INT,Id_Album INT);
CREATE TABLE GenreMusic(IdGenreM INT,nomGenreM VARCHAR(10));
CREATE TABLE Pieces_musicales_GenreMusic(IdGenreM INT,idChant INT,Id_Album INT);

CREATE TABLE Musicien(Id_Musicien INT,NomMusicien VARCHAR(20));
CREATE TABLE Musicien_Album(IdOeuvre INT,IdAlbum INT);
CREATE TABLE Réalisateur(Id_realisateur INT,NomRealis VARCHAR(20));
CREATE TABLE Realisateur_Film(Id_realisateur INT,IdFilm INT);
CREATE TABLE Acteur(Id_acteur INT,Nom Acteur VARCHAR(20));
CREATE TABLE Acteur_Film(Id_acteur INT,IdFilm INT);
CREATE TABLE Genre_Film(Id_genre_film INT, nom_genre_film VARCHAR(20));
CREATE TABLE Genre_Film_Film(Id_genre_film INT,IdFilm INT);
CREATE TABLE Auteur(Id_auteur INT,NomAuteur VARCHAR(20));
CREATE TABLE Rayon(Num_rayon,Id_etage INT,theme VARCHAR(10));

CREATE TABLE Etage(Id_etage INT,num_etage TINYINT);
CREATE TABLE Etagère(Id_étagère INT,num_étagère TINYINT,NbrOeuvre TINYINT,catégorie VARCHAR(10),Num_rayon TINYINT);
CREATE TABLE Oeuvre_centrale(Num_rayon TINYINT , theme VARCHAR(10),presentoire);
CREATE TABLE Oeuvre_recente(Num_rayon TINYINT , theme VARCHAR(10),presentoire); ---------------

CREATE TABLE Rayon_Film(Id_Film INT,Num_rayon TINYINT,theme VARCHAR(10));
CREATE TABLE Rayon_Albums(IdAlbum INT,Num_rayon TINYINT,theme VARCHAR(10));
CREATE TABLE Rayon_Livres(IdLivres INT,Num_rayon TINYINT,theme VARCHAR(10));


--- Insertion contraintes : 

CONSTRAINT PK_Oeuvre PRIMARY KEY(IdOeuvre);

CONSTRAINT PK_Livres PRIMARY KEY(IdLivre);
CONSTRAINT FK_Livres FOREIGN KEY(IdOeuvre,Id_auteur);

CONSTRAINT PK_Films PRIMARY KEY(IdFilm);
CONSTRAINT FK_Films FOREIGN KEY(IdOeuvre);

CONSTRAINT PK_Albums PRIMARY KEY(IdAlbums);
CONSTRAINT FK_Albums FOREIGN KEY(IdOeuvre);

CONSTRAINT PK_Livre_Film PRIMARY KEY(IdLivres,IdFilm);

CONSTRAINT PK_Film_Album PRIMARY KEY(IdFilm,IdAlbum);

CONSTRAINT PK_Pieces_musicales PRIMARY KEY(IdChant);

CONSTRAINT PK_Album_Pieces_musicales PRIMARY KEY(idChant,Id_Album);

CONSTRAINT PK_GenreMusic PRIMARY KEY(IdGenreM );

CONSTRAINT PK_Pieces_musicales_GenreMusic PRIMARY KEY(IdGenreM);
CONSTRAINT FK_Pieces_musicales_GenreMusic FOREIGN KEY(idChant,Id_Album);

--------
CONSTRAINT PK_Musicien PRIMARY KEY(Id_Musicien);
CONSTRAINT PK_Musicien_Album PRIMARY KEY(IdOeuvre,IdAlbum);

CONSTRAINT PK_Réalisateur PRIMARY KEY(Id_realisateur);

CONSTRAINT PK_Realisateur_Film PRIMARY KEY(Id_realisateur,IdFilm);

CONSTRAINT PK_Acteur PRIMARY KEY(Id_acteur);

CONSTRAINT PK_Acteur_Film PRIMARY KEY(Id_acteur,IdFilm);

CONSTRAINT PK_Genre_Film PRIMARY KEY(Id_genre_film);

CONSTRAINT PK_Genre_Film_Film PRIMARY KEY(Id_genre_film,IdFilm);

CONSTRAINT PK_Auteur PRIMARY KEY(Id_auteur);  

CONSTRAINT PK_Rayon PRIMARY KEY(Num_rayon);  
CONSTRAINT FK_Rayon FOREIGN KEY(Id_etage);

CONSTRAINT PK_Etage PRIMARY KEY(Id_etage);  

CONSTRAINT PK_Etagère PRIMARY KEY(Id_étagère);  
CONSTRAINT FK_Etagère FOREIGN KEY(Num_rayon);

CONSTRAINT PK_Oeuvre_centrale PRIMARY KEY(Num_rayon);  
CONSTRAINT PK_Oeuvre_recente PRIMARY KEY(Num_rayon);  

CONSTRAINT PK_Rayon_Film PRIMARY KEY(Id_Film,Num_rayon);
CONSTRAINT PK_Rayon_Albums PRIMARY KEY(IdAlbum,Num_rayon);
CONSTRAINT PK_Rayon_Livres PRIMARY KEY(IdLivres,Num_rayon);