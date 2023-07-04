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

 VARCHAR(20)
 VARCHAR(10)
 INT 
 TINYINT


--- Insertion contraintes : 

CONSTRAINT PK_liv PRIMARY KEY(IdLivre);
CONSTRAINT FK_liv FOREIGN KEY(IdOeuvre,Id_auteur);

CONSTRAINT PK_fil PRIMARY KEY(IdFilm);
CONSTRAINT FK_fil FOREIGN KEY(IdOeuvre);

CONSTRAINT PK_al PRIMARY KEY(IdAlbums);
CONSTRAINT FK_al FOREIGN KEY(IdOeuvre);

CONSTRAINT FK_LivrFilm FOREIGN KEY(IdLivres,IdFilm);
CONSTRAINT FK_LivrFilm FOREIGN KEY(IdFilm,IdAlbum);

CONSTRAINT FK_PM FOREIGN KEY(IdChant);

CONSTRAINT FK_AlbumPM FOREIGN KEY(idChant,Id_Album);

CONSTRAINT PK_GenrMus PRIMARY KEY(IdGenreM );

CONSTRAINT PK_PMGenreMus PRIMARY KEY(IdGenreM);
CONSTRAINT FK_PMGenreMus FOREIGN KEY(idChant,Id_Album);

--------
CONSTRAINT PK_Muss PRIMARY KEY(IdGenreM);
CONSTRAINT FK_MusAlbu FOREIGN KEY(IdOeuvre,IdAlbum);

CONSTRAINT PK_Real PRIMARY KEY(Id_realisateur);

CONSTRAINT FK_RealFilm FOREIGN KEY(Id_realisateur,IdFilm);

CONSTRAINT PK_Act PRIMARY KEY(Id_acteur);

CONSTRAINT FK_ActFilm FOREIGN KEY(Id_acteur,IdFilm);

CONSTRAINT PK_GenrFil PRIMARY KEY(Id_genre_film);

CONSTRAINT FK_GenrFilFil FOREIGN KEY(Id_genre_film,IdFilm);

CONSTRAINT PK_Aut PRIMARY KEY(Id_auteur);  

CONSTRAINT PK_Ray PRIMARY KEY(Num_rayon);  
CONSTRAINT FK_Ray FOREIGN KEY(Id_etage);

CONSTRAINT PK_Etag PRIMARY KEY(Id_etage);  

CONSTRAINT PK_Etaggr PRIMARY KEY(Id_étagère);  
CONSTRAINT FK_Etaggr FOREIGN KEY(Num_rayon);

CONSTRAINT PK_OeuvCentr PRIMARY KEY(Num_rayon);  
CONSTRAINT PK_OeuvrRec PRIMARY KEY(Num_rayon);  

CONSTRAINT FK_RayFil FOREIGN KEY(Id_Film,Num_rayon);
CONSTRAINT FK_RayAlbum FOREIGN KEY(IdAlbum,Num_rayon);
CONSTRAINT FK_RayLiv FOREIGN KEY(IdLivres,Num_rayon);