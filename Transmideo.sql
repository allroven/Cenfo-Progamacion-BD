--------------------------------------------------------
--  File created - Thursday-September-28-2023   
--------------------------------------------------------
DROP TABLE "AGRUPACION_HISTORICA";
DROP TABLE "ARTISTA";
DROP TABLE "CAPITULO_SERIE";
DROP TABLE "CLASIFICACION";
DROP TABLE "CLIENTE";
DROP TABLE "DESCARGAS";
DROP TABLE "DISPOSITIVOS_CUENTA";
DROP TABLE "GENEROS_AGRUPACION";
DROP TABLE "GENEROS_CINEMA";
DROP TABLE "GENEROS_VIDEO";
DROP TABLE "IDIOMA";
DROP TABLE "IDIOMA_SUBT_VIDEO";
DROP TABLE "IDIOMA_VIDEO";
DROP TABLE "PAIS";
DROP TABLE "PELICULA";
DROP TABLE "REPATO";
DROP TABLE "REPRODUCCIOINES";
DROP TABLE "ROL";
DROP TABLE "SERIE";
DROP TABLE "TEMPORADA_SERIE";
DROP TABLE "TIPO_CUENTA";
DROP TABLE "VIDEO";
--------------------------------------------------------
--  DDL for Table AGRUPACION_HISTORICA
--------------------------------------------------------

  CREATE TABLE "AGRUPACION_HISTORICA" 
   (	"ID_AGUPACION" NUMBER, 
	"TITULO" VARCHAR2(100) COLLATE "USING_NLS_COMP", 
	"ABSTRACT" VARCHAR2(1000) COLLATE "USING_NLS_COMP", 
	"TIPO_AGUPACION" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"BASADA" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"SERIE_ID" NUMBER, 
	"PELICULA_ID" NUMBER
   );
--------------------------------------------------------
--  DDL for Table ARTISTA
--------------------------------------------------------

  CREATE TABLE "ARTISTA" 
   (	"ARTISTA_ID" NUMBER, 
	"NOMBRE" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"APELLIDO1" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"APELLIDO2" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"PAIS_ID" VARCHAR2(3) COLLATE "USING_NLS_COMP", 
	"FECHA_NACIMIENTO" DATE, 
	"SEXO" VARCHAR2(1) COLLATE "USING_NLS_COMP", 
	"HISTORIA" VARCHAR2(1000) COLLATE "USING_NLS_COMP"
   );
--------------------------------------------------------
--  DDL for Table CAPITULO_SERIE
--------------------------------------------------------

  CREATE TABLE "CAPITULO_SERIE" 
   (	"CAPITULO_ID" NUMBER, 
	"TITULO" VARCHAR2(100) COLLATE "USING_NLS_COMP", 
	"SERIE_ID" NUMBER, 
	"TEMPORADA_ID" NUMBER, 
	"VIDEO_ID" NUMBER
   );
--------------------------------------------------------
--  DDL for Table CLASIFICACION
--------------------------------------------------------

  CREATE TABLE "CLASIFICACION" 
   (	"CLASIFICACION_ID" NUMBER, 
	"NOMBRE" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"DESCRIPCION" VARCHAR2(100) COLLATE "USING_NLS_COMP"
   )  ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "CLIENTE" 
   (	"CLIENTE_ID" NUMBER, 
	"NOMBRE" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"APELLIDOS" VARCHAR2(30) COLLATE "USING_NLS_COMP", 
	"DIRECCION" VARCHAR2(250) COLLATE "USING_NLS_COMP", 
	"TELEFONO" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"FECHA_NACIMIENTO" DATE, 
	"PAIS_ID" VARCHAR2(3) COLLATE "USING_NLS_COMP", 
	"EMAIL" VARCHAR2(100) COLLATE "USING_NLS_COMP", 
	"TIPO_CUENTA_ID" NUMBER, 
	"FECHA_INCLUSION" DATE
   );
--------------------------------------------------------
--  DDL for Table DESCARGAS
--------------------------------------------------------

  CREATE TABLE "DESCARGAS" 
   (	"DESCRAGA_ID" NUMBER, 
	"CLIENTE_ID" NUMBER, 
	"VIDEO_ID" NUMBER, 
	"FECHA_DESCARGA" DATE, 
	"ESTADO" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"ULTIMO_MINUTO" NUMBER
   );
--------------------------------------------------------
--  DDL for Table DISPOSITIVOS_CUENTA
--------------------------------------------------------

  CREATE TABLE "DISPOSITIVOS_CUENTA" 
   (	"DISPOSITIVO_ID" NUMBER, 
	"CLIENTE_ID" NUMBER, 
	"NOMBRE" VARCHAR2(100) COLLATE "USING_NLS_COMP", 
	"LOCALIZACION" VARCHAR2(250) COLLATE "USING_NLS_COMP", 
	"ACTIVO" NUMBER DEFAULT 1
   );
--------------------------------------------------------
--  DDL for Table GENEROS_AGRUPACION
--------------------------------------------------------

  CREATE TABLE "GENEROS_AGRUPACION" 
   (	"GENERO_ID" NUMBER, 
	"AGRUPACION_ID" NUMBER
   );
--------------------------------------------------------
--  DDL for Table GENEROS_CINEMA
--------------------------------------------------------

  CREATE TABLE "GENEROS_CINEMA" 
   (	"GENERO_ID" NUMBER, 
	"NOMBRE" VARCHAR2(100) COLLATE "USING_NLS_COMP"
   );
--------------------------------------------------------
--  DDL for Table GENEROS_VIDEO
--------------------------------------------------------

  CREATE TABLE "GENEROS_VIDEO" 
   (	"GENERO_ID" NUMBER, 
	"SERIE_ID" NUMBER, 
	"PELICULA_ID" NUMBER
   );
--------------------------------------------------------
--  DDL for Table IDIOMA
--------------------------------------------------------

  CREATE TABLE "IDIOMA" 
   (	"IDIOMA_ID" NUMBER, 
	"NOMBRE" VARCHAR2(100) COLLATE "USING_NLS_COMP", 
	"ACTIVO" NUMBER DEFAULT 1
   );
--------------------------------------------------------
--  DDL for Table IDIOMA_SUBT_VIDEO
--------------------------------------------------------

  CREATE TABLE "IDIOMA_SUBT_VIDEO" 
   (	"VIDEO_ID" NUMBER, 
	"IDIOMA_ID" NUMBER, 
	"ACTIVO" NUMBER(1,0) DEFAULT 1
   );
--------------------------------------------------------
--  DDL for Table IDIOMA_VIDEO
--------------------------------------------------------

  CREATE TABLE "IDIOMA_VIDEO" 
   (	"VIDEO_ID" NUMBER, 
	"IDIOMA_ID" NUMBER, 
	"ACTIVO" NUMBER(1,0), 
	"ARCHIVO" BLOB
   );
--------------------------------------------------------
--  DDL for Table PAIS
--------------------------------------------------------

  CREATE TABLE "PAIS" 
   (	"PAIS_ID" VARCHAR2(3) COLLATE "USING_NLS_COMP", 
	"NOMBRE" VARCHAR2(50) COLLATE "USING_NLS_COMP"
   ) ;
--------------------------------------------------------
--  DDL for Table PELICULA
--------------------------------------------------------

  CREATE TABLE "PELICULA" 
   (	"PELICULA_ID" NUMBER, 
	"TITULO" VARCHAR2(100) COLLATE "USING_NLS_COMP", 
	"ANIO" NUMBER, 
	"PAIS_ID" VARCHAR2(3) COLLATE "USING_NLS_COMP", 
	"ESTUDIO" VARCHAR2(100) COLLATE "USING_NLS_COMP", 
	"CLASIFICACION_ID" NUMBER, 
	"MINUTOS_DURACION" NUMBER, 
	"VIDEO_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table REPATO
--------------------------------------------------------

  CREATE TABLE "REPATO" 
   (	"ROL_REPARTO_ID" NUMBER, 
	"ARTISTA_ID" NUMBER, 
	"ROL_ID" NUMBER, 
	"VIDEO_ID" NUMBER
   )  ;
--------------------------------------------------------
--  DDL for Table REPRODUCCIOINES
--------------------------------------------------------

  CREATE TABLE "REPRODUCCIOINES" 
   (	"REPRODUCCION_ID" NUMBER, 
	"CLIENTE_ID" NUMBER, 
	"VIDEO_ID" NUMBER, 
	"FECHA_INICIO" DATE, 
	"ESTADO" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"ULTIMO_MINUTO" NUMBER
   );
--------------------------------------------------------
--  DDL for Table ROL
--------------------------------------------------------

  CREATE TABLE "ROL" 
   (	"ROL_ID" NUMBER, 
	"NOMBRE" VARCHAR2(100) COLLATE "USING_NLS_COMP", 
	"ACTIVO" NUMBER
   );
--------------------------------------------------------
--  DDL for Table SERIE
--------------------------------------------------------

  CREATE TABLE "SERIE" 
   (	"SERIE_ID" NUMBER, 
	"TITULO" VARCHAR2(100) COLLATE "USING_NLS_COMP", 
	"ABSTRACT" VARCHAR2(1000) COLLATE "USING_NLS_COMP", 
	"ANIO_INICIO" DATE, 
	"CANT_TEMPORADAS" NUMBER, 
	"CANT_EPISODIOS" VARCHAR2(20) COLLATE "USING_NLS_COMP", 
	"CLASIFICACION_ID" NUMBER, 
	"PAIS_ID" VARCHAR2(3) COLLATE "USING_NLS_COMP"
   );
--------------------------------------------------------
--  DDL for Table TEMPORADA_SERIE
--------------------------------------------------------

  CREATE TABLE "TEMPORADA_SERIE" 
   (	"ID_TEMPORADA" NUMBER, 
	"SERIE_ID" NUMBER, 
	"TITULO" VARCHAR2(100) COLLATE "USING_NLS_COMP"
   );
--------------------------------------------------------
--  DDL for Table TIPO_CUENTA
--------------------------------------------------------

  CREATE TABLE "TIPO_CUENTA" 
   (	"TIPO_CUENTA_ID" NUMBER, 
	"DESCRIPCION" VARCHAR2(50) COLLATE "USING_NLS_COMP", 
	"LIMITE" NUMBER
   );
--------------------------------------------------------
--  DDL for Table VIDEO
--------------------------------------------------------

  CREATE TABLE "VIDEO" 
   (	"VIDEO_ID" NUMBER, 
	"MINUTOS_DURACION" NUMBER
   );
--------------------------------------------------------
--  DDL for Index AGRUPACION_HISTORICA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AGRUPACION_HISTORICA_PK" ON "AGRUPACION_HISTORICA" ("ID_AGUPACION");
--------------------------------------------------------
--  DDL for Index ARTISTA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ARTISTA_PK" ON "ARTISTA" ("ARTISTA_ID");
--------------------------------------------------------
--  DDL for Index CAPITULO_SERIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CAPITULO_SERIE_PK" ON "CAPITULO_SERIE" ("CAPITULO_ID");
--------------------------------------------------------
--  DDL for Index CLASIFICACION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CLASIFICACION_PK" ON "CLASIFICACION" ("CLASIFICACION_ID");
--------------------------------------------------------
--  DDL for Index CLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CLIENTE_PK" ON "CLIENTE" ("CLIENTE_ID");
--------------------------------------------------------
--  DDL for Index DESCARGAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DESCARGAS_PK" ON "DESCARGAS" ("DESCRAGA_ID");
--------------------------------------------------------
--  DDL for Index DISPOSITIVOS_CUENTA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DISPOSITIVOS_CUENTA_PK" ON "DISPOSITIVOS_CUENTA" ("DISPOSITIVO_ID", "CLIENTE_ID");
--------------------------------------------------------
--  DDL for Index GENEROS_CINEMA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GENEROS_CINEMA_PK" ON "GENEROS_CINEMA" ("GENERO_ID");
--------------------------------------------------------
--  DDL for Index IDIOMA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IDIOMA_PK" ON "IDIOMA" ("IDIOMA_ID");
--------------------------------------------------------
--  DDL for Index IDIOMA_SUB_VIDEO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IDIOMA_SUB_VIDEO_PK" ON "IDIOMA_SUBT_VIDEO" ("VIDEO_ID", "IDIOMA_ID");
--------------------------------------------------------
--  DDL for Index IDIOMA_VIDEO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IDIOMA_VIDEO_PK" ON "IDIOMA_VIDEO" ("VIDEO_ID", "IDIOMA_ID");
--------------------------------------------------------
--  DDL for Index PAIS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PAIS_PK" ON "PAIS" ("PAIS_ID");
--------------------------------------------------------
--  DDL for Index PELICULA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PELICULA_PK" ON "PELICULA" ("PELICULA_ID");
--------------------------------------------------------
--  DDL for Index REPRODUCCIOINES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPRODUCCIOINES_PK" ON "REPRODUCCIOINES" ("REPRODUCCION_ID");
--------------------------------------------------------
--  DDL for Index ROL_ARTISTA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ROL_ARTISTA_PK" ON "REPATO" ("ROL_REPARTO_ID");
--------------------------------------------------------
--  DDL for Index ROL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ROL_PK" ON "ROL" ("ROL_ID");
--------------------------------------------------------
--  DDL for Index SERIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SERIE_PK" ON "SERIE" ("SERIE_ID");
--------------------------------------------------------
--  DDL for Index TEMPORADA_SERIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEMPORADA_SERIE_PK" ON "TEMPORADA_SERIE" ("ID_TEMPORADA");
--------------------------------------------------------
--  DDL for Index TIPO_CUENTA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TIPO_CUENTA_PK" ON "TIPO_CUENTA" ("TIPO_CUENTA_ID");
--------------------------------------------------------
--  DDL for Index VIDEO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VIDEO_PK" ON "VIDEO" ("VIDEO_ID");
--------------------------------------------------------
--  DDL for Index AGRUPACION_HISTORICA_PK
--------------------------------------------------------
  
--------------------------------------------------------
--  Constraints for Table AGRUPACION_HISTORICA
--------------------------------------------------------

  ALTER TABLE "AGRUPACION_HISTORICA" MODIFY ("ID_AGUPACION" NOT NULL ENABLE);
  ALTER TABLE "AGRUPACION_HISTORICA" MODIFY ("TITULO" NOT NULL ENABLE);
  ALTER TABLE "AGRUPACION_HISTORICA" MODIFY ("ABSTRACT" NOT NULL ENABLE);
  ALTER TABLE "AGRUPACION_HISTORICA" MODIFY ("TIPO_AGUPACION" NOT NULL ENABLE);
  ALTER TABLE "AGRUPACION_HISTORICA" MODIFY ("BASADA" NOT NULL ENABLE);
  ALTER TABLE "AGRUPACION_HISTORICA" ADD CONSTRAINT "AGRUPACION_HISTORICA_PK" PRIMARY KEY ("ID_AGUPACION")USING INDEX  ENABLE;
  ALTER TABLE "AGRUPACION_HISTORICA" ADD CONSTRAINT "AGRUPACION_HISTORICA_CHK_TIPO_AGRUPACION" CHECK (TIPO_AGUPACION IN ('SAGA','MACROSERIE','DOCUSERIE')) ENABLE;
--------------------------------------------------------
--  Constraints for Table ARTISTA
--------------------------------------------------------

  ALTER TABLE "ARTISTA" MODIFY ("ARTISTA_ID" NOT NULL ENABLE);
  ALTER TABLE "ARTISTA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ARTISTA" MODIFY ("APELLIDO1" NOT NULL ENABLE);
  ALTER TABLE "ARTISTA" MODIFY ("PAIS_ID" NOT NULL ENABLE);
  ALTER TABLE "ARTISTA" MODIFY ("FECHA_NACIMIENTO" NOT NULL ENABLE);
  ALTER TABLE "ARTISTA" MODIFY ("SEXO" NOT NULL ENABLE);
  ALTER TABLE "ARTISTA" ADD CONSTRAINT "ARTISTA_PK" PRIMARY KEY ("ARTISTA_ID") USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CAPITULO_SERIE
--------------------------------------------------------

  ALTER TABLE "CAPITULO_SERIE" MODIFY ("CAPITULO_ID" NOT NULL ENABLE);
  ALTER TABLE "CAPITULO_SERIE" MODIFY ("TITULO" NOT NULL ENABLE);
  ALTER TABLE "CAPITULO_SERIE" MODIFY ("SERIE_ID" NOT NULL ENABLE);
  ALTER TABLE "CAPITULO_SERIE" MODIFY ("TEMPORADA_ID" NOT NULL ENABLE);
  ALTER TABLE "CAPITULO_SERIE" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
  ALTER TABLE "CAPITULO_SERIE" ADD CONSTRAINT "CAPITULO_SERIE_PK" PRIMARY KEY ("CAPITULO_ID") USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLASIFICACION
--------------------------------------------------------

  ALTER TABLE "CLASIFICACION" MODIFY ("CLASIFICACION_ID" NOT NULL ENABLE);
  ALTER TABLE "CLASIFICACION" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "CLASIFICACION" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "CLASIFICACION" ADD CONSTRAINT "CLASIFICACION_PK" PRIMARY KEY ("CLASIFICACION_ID") USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "CLIENTE" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("APELLIDOS" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("PAIS_ID" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("CLIENTE_ID" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("TIPO_CUENTA_ID" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" MODIFY ("FECHA_INCLUSION" NOT NULL ENABLE);
  ALTER TABLE "CLIENTE" ADD CONSTRAINT "CLIENTE_PK" PRIMARY KEY ("CLIENTE_ID")  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table DESCARGAS
--------------------------------------------------------

  ALTER TABLE "DESCARGAS" MODIFY ("DESCRAGA_ID" NOT NULL ENABLE);
  ALTER TABLE "DESCARGAS" MODIFY ("CLIENTE_ID" NOT NULL ENABLE);
  ALTER TABLE "DESCARGAS" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
  ALTER TABLE "DESCARGAS" MODIFY ("FECHA_DESCARGA" NOT NULL ENABLE);
  ALTER TABLE "DESCARGAS" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "DESCARGAS" MODIFY ("ULTIMO_MINUTO" NOT NULL ENABLE);
  ALTER TABLE "DESCARGAS" ADD CONSTRAINT "DESCARGAS_PK" PRIMARY KEY ("DESCRAGA_ID")  USING INDEX  ENABLE;
  ALTER TABLE "DESCARGAS" ADD CONSTRAINT "DESCARGAS_CHK_ESTADO" CHECK (ESTADO IN ('PAUSADO','TERMINADO')) ENABLE;
--------------------------------------------------------
--  Constraints for Table DISPOSITIVOS_CUENTA
--------------------------------------------------------

  ALTER TABLE "DISPOSITIVOS_CUENTA" MODIFY ("DISPOSITIVO_ID" NOT NULL ENABLE);
  ALTER TABLE "DISPOSITIVOS_CUENTA" MODIFY ("CLIENTE_ID" NOT NULL ENABLE);
  ALTER TABLE "DISPOSITIVOS_CUENTA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "DISPOSITIVOS_CUENTA" MODIFY ("ACTIVO" NOT NULL ENABLE);
  ALTER TABLE "DISPOSITIVOS_CUENTA" ADD CONSTRAINT "DISPOSITIVOS_CUENTA_PK" PRIMARY KEY ("DISPOSITIVO_ID", "CLIENTE_ID") USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table GENEROS_AGRUPACION
--------------------------------------------------------

  ALTER TABLE "GENEROS_AGRUPACION" MODIFY ("GENERO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GENEROS_CINEMA
--------------------------------------------------------

  ALTER TABLE "GENEROS_CINEMA" MODIFY ("GENERO_ID" NOT NULL ENABLE);
  ALTER TABLE "GENEROS_CINEMA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "GENEROS_CINEMA" ADD CONSTRAINT "GENEROS_CINEMA_PK" PRIMARY KEY ("GENERO_ID") USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table GENEROS_VIDEO
--------------------------------------------------------

  ALTER TABLE "GENEROS_VIDEO" MODIFY ("GENERO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table IDIOMA
--------------------------------------------------------

  ALTER TABLE "IDIOMA" MODIFY ("IDIOMA_ID" NOT NULL ENABLE);
  ALTER TABLE "IDIOMA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "IDIOMA" MODIFY ("ACTIVO" NOT NULL ENABLE);
  ALTER TABLE "IDIOMA" ADD CONSTRAINT "IDIOMA_PK" PRIMARY KEY ("IDIOMA_ID")  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table IDIOMA_SUBT_VIDEO
--------------------------------------------------------

  ALTER TABLE "IDIOMA_SUBT_VIDEO" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
  ALTER TABLE "IDIOMA_SUBT_VIDEO" MODIFY ("IDIOMA_ID" NOT NULL ENABLE);
  ALTER TABLE "IDIOMA_SUBT_VIDEO" MODIFY ("ACTIVO" NOT NULL ENABLE);
  ALTER TABLE "IDIOMA_SUBT_VIDEO" ADD CONSTRAINT "IDIOMA_SUB_VIDEO_PK" PRIMARY KEY ("VIDEO_ID", "IDIOMA_ID")  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table IDIOMA_VIDEO
--------------------------------------------------------

  ALTER TABLE "IDIOMA_VIDEO" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
  ALTER TABLE "IDIOMA_VIDEO" MODIFY ("IDIOMA_ID" NOT NULL ENABLE);
  ALTER TABLE "IDIOMA_VIDEO" MODIFY ("ACTIVO" NOT NULL ENABLE);
  ALTER TABLE "IDIOMA_VIDEO" ADD CONSTRAINT "IDIOMA_VIDEO_PK" PRIMARY KEY ("VIDEO_ID", "IDIOMA_ID")  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAIS
--------------------------------------------------------

  ALTER TABLE "PAIS" MODIFY ("PAIS_ID" NOT NULL ENABLE);
  ALTER TABLE "PAIS" ADD CONSTRAINT "PAIS_PK" PRIMARY KEY ("PAIS_ID")  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PELICULA
--------------------------------------------------------

  ALTER TABLE "PELICULA" MODIFY ("PELICULA_ID" NOT NULL ENABLE);
  ALTER TABLE "PELICULA" ADD CONSTRAINT "PELICULA_PK" PRIMARY KEY ("PELICULA_ID")  USING INDEX  ENABLE;
  ALTER TABLE "PELICULA" MODIFY ("TITULO" NOT NULL ENABLE);
  ALTER TABLE "PELICULA" MODIFY ("ANIO" NOT NULL ENABLE);
  ALTER TABLE "PELICULA" MODIFY ("PAIS_ID" NOT NULL ENABLE);
  ALTER TABLE "PELICULA" MODIFY ("ESTUDIO" NOT NULL ENABLE);
  ALTER TABLE "PELICULA" MODIFY ("CLASIFICACION_ID" NOT NULL ENABLE);
  ALTER TABLE "PELICULA" MODIFY ("MINUTOS_DURACION" NOT NULL ENABLE);
  ALTER TABLE "PELICULA" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPATO
--------------------------------------------------------

  ALTER TABLE "REPATO" MODIFY ("ROL_REPARTO_ID" NOT NULL ENABLE);
  ALTER TABLE "REPATO" MODIFY ("ARTISTA_ID" NOT NULL ENABLE);
  ALTER TABLE "REPATO" MODIFY ("ROL_ID" NOT NULL ENABLE);
  ALTER TABLE "REPATO" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
  ALTER TABLE "REPATO" ADD CONSTRAINT "ROL_ARTISTA_PK" PRIMARY KEY ("ROL_REPARTO_ID")  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table REPRODUCCIOINES
--------------------------------------------------------

  ALTER TABLE "REPRODUCCIOINES" MODIFY ("CLIENTE_ID" NOT NULL ENABLE);
  ALTER TABLE "REPRODUCCIOINES" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
  ALTER TABLE "REPRODUCCIOINES" MODIFY ("FECHA_INICIO" NOT NULL ENABLE);
  ALTER TABLE "REPRODUCCIOINES" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "REPRODUCCIOINES" MODIFY ("ULTIMO_MINUTO" NOT NULL ENABLE);
  ALTER TABLE "REPRODUCCIOINES" ADD CONSTRAINT "REPRODUCCIOINES_PK" PRIMARY KEY ("REPRODUCCION_ID") USING INDEX  ENABLE;
  ALTER TABLE "REPRODUCCIOINES" MODIFY ("REPRODUCCION_ID" NOT NULL ENABLE);
  ALTER TABLE "REPRODUCCIOINES" ADD CONSTRAINT "REPRODUCCIOINES_CHK_ESTADO" CHECK (ESTADO IN ('PAUSADO','TERMINADO')) ENABLE;
--------------------------------------------------------
--  Constraints for Table ROL
--------------------------------------------------------

  ALTER TABLE "ROL" MODIFY ("ROL_ID" NOT NULL ENABLE);
  ALTER TABLE "ROL" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ROL" MODIFY ("ACTIVO" NOT NULL ENABLE);
  ALTER TABLE "ROL" ADD CONSTRAINT "ROL_PK" PRIMARY KEY ("ROL_ID")  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SERIE
--------------------------------------------------------

  ALTER TABLE "SERIE" MODIFY ("SERIE_ID" NOT NULL ENABLE);
  ALTER TABLE "SERIE" MODIFY ("TITULO" NOT NULL ENABLE);
  ALTER TABLE "SERIE" MODIFY ("ABSTRACT" NOT NULL ENABLE);
  ALTER TABLE "SERIE" MODIFY ("ANIO_INICIO" NOT NULL ENABLE);
  ALTER TABLE "SERIE" MODIFY ("CANT_TEMPORADAS" NOT NULL ENABLE);
  ALTER TABLE "SERIE" MODIFY ("CANT_EPISODIOS" NOT NULL ENABLE);
  ALTER TABLE "SERIE" MODIFY ("CLASIFICACION_ID" NOT NULL ENABLE);
  ALTER TABLE "SERIE" ADD CONSTRAINT "SERIE_PK" PRIMARY KEY ("SERIE_ID")  USING INDEX  ENABLE;
  ALTER TABLE "SERIE" MODIFY ("PAIS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TEMPORADA_SERIE
--------------------------------------------------------

  ALTER TABLE "TEMPORADA_SERIE" MODIFY ("ID_TEMPORADA" NOT NULL ENABLE);
  ALTER TABLE "TEMPORADA_SERIE" MODIFY ("SERIE_ID" NOT NULL ENABLE);
  ALTER TABLE "TEMPORADA_SERIE" MODIFY ("TITULO" NOT NULL ENABLE);
  ALTER TABLE "TEMPORADA_SERIE" ADD CONSTRAINT "TEMPORADA_SERIE_PK" PRIMARY KEY ("ID_TEMPORADA")  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIPO_CUENTA
--------------------------------------------------------

  ALTER TABLE "TIPO_CUENTA" MODIFY ("TIPO_CUENTA_ID" NOT NULL ENABLE);
  ALTER TABLE "TIPO_CUENTA" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "TIPO_CUENTA" MODIFY ("LIMITE" NOT NULL ENABLE);
  ALTER TABLE "TIPO_CUENTA" ADD CONSTRAINT "TIPO_CUENTA_PK" PRIMARY KEY ("TIPO_CUENTA_ID")  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table VIDEO
--------------------------------------------------------

  ALTER TABLE "VIDEO" ADD CONSTRAINT "VIDEO_PK" PRIMARY KEY ("VIDEO_ID")  USING INDEX  ENABLE;
  ALTER TABLE "VIDEO" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
  ALTER TABLE "VIDEO" MODIFY ("MINUTOS_DURACION" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table AGRUPACION_HISTORICA
--------------------------------------------------------

  ALTER TABLE "AGRUPACION_HISTORICA" ADD CONSTRAINT "AGRUPACION_HISTORICA_FK_PELICULA" FOREIGN KEY ("PELICULA_ID")	  REFERENCES "PELICULA" ("PELICULA_ID") ENABLE;
  ALTER TABLE "AGRUPACION_HISTORICA" ADD CONSTRAINT "AGRUPACION_HISTORICA_FK_SERIE" FOREIGN KEY ("SERIE_ID")	  REFERENCES "SERIE" ("SERIE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ARTISTA
--------------------------------------------------------

  ALTER TABLE "ARTISTA" ADD CONSTRAINT "ARTISTA_FK_PAIS" FOREIGN KEY ("PAIS_ID") REFERENCES "PAIS" ("PAIS_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CAPITULO_SERIE
--------------------------------------------------------

  ALTER TABLE "CAPITULO_SERIE" ADD CONSTRAINT "CAPITULO_SERIE_FK_VIDEO" FOREIGN KEY ("VIDEO_ID")
	  REFERENCES "VIDEO" ("VIDEO_ID") ENABLE;
  ALTER TABLE "CAPITULO_SERIE" ADD CONSTRAINT "CAPITULO_SERIE_FK_SERIE" FOREIGN KEY ("SERIE_ID")
	  REFERENCES "SERIE" ("SERIE_ID") ENABLE;
  ALTER TABLE "CAPITULO_SERIE" ADD CONSTRAINT "CAPITULO_SERIE_FK_TEMPORADA" FOREIGN KEY ("CAPITULO_ID")
	  REFERENCES "TEMPORADA_SERIE" ("ID_TEMPORADA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "CLIENTE" ADD CONSTRAINT "CLIENTE_FK_TIPO" FOREIGN KEY ("TIPO_CUENTA_ID")
	  REFERENCES "TIPO_CUENTA" ("TIPO_CUENTA_ID") ENABLE;
  ALTER TABLE "CLIENTE" ADD CONSTRAINT "CLIENTE_FK_PAIS" FOREIGN KEY ("PAIS_ID")
	  REFERENCES "PAIS" ("PAIS_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DESCARGAS
--------------------------------------------------------

  ALTER TABLE "DESCARGAS" ADD CONSTRAINT "DESCARGAS_FK_CLIENTE" FOREIGN KEY ("CLIENTE_ID")
	  REFERENCES "CLIENTE" ("CLIENTE_ID") ENABLE;
  ALTER TABLE "DESCARGAS" ADD CONSTRAINT "DESCARGAS_FK_VIDEO" FOREIGN KEY ("VIDEO_ID")
	  REFERENCES "VIDEO" ("VIDEO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DISPOSITIVOS_CUENTA
--------------------------------------------------------

  ALTER TABLE "DISPOSITIVOS_CUENTA" ADD CONSTRAINT "DISPOSITIVOS_CUENTA_FK_CUENTA" FOREIGN KEY ("CLIENTE_ID")
	  REFERENCES "CLIENTE" ("CLIENTE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GENEROS_AGRUPACION
--------------------------------------------------------

  ALTER TABLE "GENEROS_AGRUPACION" ADD CONSTRAINT "GENEROS_AGRUPACION_FK_GENERO" FOREIGN KEY ("GENERO_ID")
	  REFERENCES "GENEROS_CINEMA" ("GENERO_ID") ENABLE;
  ALTER TABLE "GENEROS_AGRUPACION" ADD CONSTRAINT "GENEROS_AGRUPACION_FK_AGRUPACION" FOREIGN KEY ("AGRUPACION_ID")
	  REFERENCES "AGRUPACION_HISTORICA" ("ID_AGUPACION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GENEROS_VIDEO
--------------------------------------------------------

  ALTER TABLE "GENEROS_VIDEO" ADD CONSTRAINT "GENEROS_VIDEO_FK_PELICULA" FOREIGN KEY ("PELICULA_ID")
	  REFERENCES "PELICULA" ("PELICULA_ID") ENABLE;
  ALTER TABLE "GENEROS_VIDEO" ADD CONSTRAINT "GENEROS_VIDEO_FK_GENERO" FOREIGN KEY ("GENERO_ID")
	  REFERENCES "GENEROS_CINEMA" ("GENERO_ID") ENABLE;
  ALTER TABLE "GENEROS_VIDEO" ADD CONSTRAINT "GENEROS_VIDEO_FK_SERIE" FOREIGN KEY ("SERIE_ID")
	  REFERENCES "SERIE" ("SERIE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table IDIOMA_SUBT_VIDEO
--------------------------------------------------------

  ALTER TABLE "IDIOMA_SUBT_VIDEO" ADD CONSTRAINT "IDIOMA_SUB_VIDEO_FK_IDIOMA" FOREIGN KEY ("IDIOMA_ID")
	  REFERENCES "IDIOMA" ("IDIOMA_ID") ENABLE;
  ALTER TABLE "IDIOMA_SUBT_VIDEO" ADD CONSTRAINT "IDIOMA_SUB_VIDEO_FK_VIDEO" FOREIGN KEY ("VIDEO_ID")
	  REFERENCES "VIDEO" ("VIDEO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table IDIOMA_VIDEO
--------------------------------------------------------

  ALTER TABLE "IDIOMA_VIDEO" ADD CONSTRAINT "IDIOMA_VIDEO_FK_VIDEO" FOREIGN KEY ("ACTIVO")
	  REFERENCES "VIDEO" ("VIDEO_ID") ENABLE;
  ALTER TABLE "IDIOMA_VIDEO" ADD CONSTRAINT "IDIOMA_VIDEO_FK_IDIOMA" FOREIGN KEY ("IDIOMA_ID")
	  REFERENCES "IDIOMA" ("IDIOMA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PELICULA
--------------------------------------------------------

  ALTER TABLE "PELICULA" ADD CONSTRAINT "PELICULA_FK_CLASIFICACION" FOREIGN KEY ("CLASIFICACION_ID")
	  REFERENCES "CLASIFICACION" ("CLASIFICACION_ID") ENABLE;
  ALTER TABLE "PELICULA" ADD CONSTRAINT "PELICULA_FK_VIDEO" FOREIGN KEY ("VIDEO_ID")
	  REFERENCES "VIDEO" ("VIDEO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REPATO
--------------------------------------------------------

  ALTER TABLE "REPATO" ADD CONSTRAINT "ROL_ARTISTA_FK_VIDEO" FOREIGN KEY ("VIDEO_ID")
	  REFERENCES "VIDEO" ("VIDEO_ID") ENABLE;
  ALTER TABLE "REPATO" ADD CONSTRAINT "ROL_ARTISTA_FK_ARTISTA" FOREIGN KEY ("ARTISTA_ID")
	  REFERENCES "ARTISTA" ("ARTISTA_ID") ENABLE;
  ALTER TABLE "REPATO" ADD CONSTRAINT "ROL_ARTISTA_FK_ROL" FOREIGN KEY ("ROL_ID")
	  REFERENCES "ROL" ("ROL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REPRODUCCIOINES
--------------------------------å------------------------

  ALTER TABLE "REPRODUCCIOINES" ADD CONSTRAINT "REPRODUCCIOINES_FK_CLIENTE" FOREIGN KEY ("CLIENTE_ID")
	  REFERENCES "CLIENTE" ("CLIENTE_ID") ENABLE;
  ALTER TABLE "REPRODUCCIOINES" ADD CONSTRAINT "REPRODUCCIOINES_FK_VIDEO" FOREIGN KEY ("VIDEO_ID")
	  REFERENCES "VIDEO" ("VIDEO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TEMPORADA_SERIE
--------------------------------------------------------

  ALTER TABLE "TEMPORADA_SERIE" ADD CONSTRAINT "TEMPORADA_SERIE_FK1" FOREIGN KEY ("SERIE_ID")
	  REFERENCES "SERIE" ("SERIE_ID") ENABLE;


-- REPORTS

--REPORT 5

CREATE OR REPLACE PROCEDURE InfoSeriesReproducidas IS
BEGIN
    FOR serie_rec IN (
        SELECT
            S.TITULO,
            S.ANIO_INICIO,
            S.CANT_TEMPORADAS,
            COUNT(R.REPRODUCCION_ID) AS CANTIDAD_REPRODUCCIONES
        FROM
            SERIE S
        LEFT JOIN
            REPRODUCCIOINES R ON S.SERIE_ID = R.VIDEO_ID
        GROUP BY
            S.TITULO, S.ANIO_INICIO, S.CANT_TEMPORADAS
        ORDER BY
            S.ANIO_INICIO, S.TITULO
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Titulo: ' || serie_rec.TITULO || 
                             ', Ano: ' || serie_rec.ANIO_INICIO || 
                             ', Temporadas: ' || serie_rec.CANT_TEMPORADAS || 
                             ', Reproducciones: ' || serie_rec.CANTIDAD_REPRODUCCIONES);
    END LOOP;
END;
/
-- REPORT 6

CREATE OR REPLACE PROCEDURE InfoDocumentalesReproducidos IS
BEGIN

    FOR doc IN (SELECT s.TITULO, s.ANIO_INICIO, s.CANT_TEMPORADAS, COUNT(r.REPRODUCCION_ID) AS CANTIDAD_REPRODUCCIONES
                FROM SERIE s
                JOIN CLASIFICACION c ON s.CLASIFICACION_ID = c.CLASIFICACION_ID
                LEFT JOIN REPRODUCCIOINES r ON s.SERIE_ID = r.VIDEO_ID
                WHERE c.NOMBRE = 'DOCUMENTAL'
                GROUP BY s.TITULO, s.ANIO_INICIO, s.CANT_TEMPORADAS
                ORDER BY s.ANIO_INICIO, s.TITULO) 
    LOOP
        -- Mostrar los resultados del cursor
        DBMS_OUTPUT.PUT_LINE('Titulo: ' || doc.TITULO);
        DBMS_OUTPUT.PUT_LINE('Ano: ' || doc.ANIO_INICIO);
        DBMS_OUTPUT.PUT_LINE('Cantidad de Temporadas: ' || doc.CANT_TEMPORADAS);
        DBMS_OUTPUT.PUT_LINE('Cantidad de Reproducciones: ' || doc.CANTIDAD_REPRODUCCIONES);
        DBMS_OUTPUT.PUT_LINE('---------------------------------------');
    END LOOP;
END InfoDocumentalesReproducidos;
/


--REPORT 7

CREATE OR REPLACE PROCEDURE infoVideosDescargados AS
BEGIN
    FOR r IN (SELECT 'Pelicula' AS Tipo, 
                     p.TITULO, 
                     p.ANIO, 
                     v.MINUTOS_DURACION, 
                     COUNT(d.DESCRAGA_ID) AS Cantidad_Descargas, 
                     MAX(d.FECHA_DESCARGA) AS Fecha_Ultima_Descarga
              FROM DESCARGAS d
              JOIN VIDEO v ON d.VIDEO_ID = v.VIDEO_ID
              JOIN PELICULA p ON v.VIDEO_ID = p.VIDEO_ID
              GROUP BY p.TITULO, p.ANIO, v.MINUTOS_DURACION
              UNION
              SELECT 'Serie' AS Tipo, 
                     s.TITULO, 
                     EXTRACT(YEAR FROM s.ANIO_INICIO) AS ANIO, 
                     v.MINUTOS_DURACION, 
                     COUNT(d.DESCRAGA_ID) AS Cantidad_Descargas, 
                     MAX(d.FECHA_DESCARGA) AS Fecha_Ultima_Descarga
              FROM DESCARGAS d
              JOIN VIDEO v ON d.VIDEO_ID = v.VIDEO_ID
              JOIN TEMPORADA_SERIE ts ON v.VIDEO_ID = ts.SERIE_ID
              JOIN SERIE s ON ts.SERIE_ID = s.SERIE_ID
              GROUP BY s.TITULO, EXTRACT(YEAR FROM s.ANIO_INICIO), v.MINUTOS_DURACION)
    LOOP
        DBMS_OUTPUT.PUT_LINE('Tipo: ' || r.Tipo || ', Titulo: ' || r.TITULO || ', Ano: ' || r.ANIO || 
                             ', Duracion: ' || r.MINUTOS_DURACION || ', Descargas: ' || r.Cantidad_Descargas || 
                             ', Ultima Descarga: ' || TO_CHAR(r.Fecha_Ultima_Descarga, 'DD-MON-YYYY HH24:MI:SS'));
    END LOOP;
END infoVideosDescargados;
/
-- REPORT 8

CREATE OR REPLACE PROCEDURE InfoClientes AS
BEGIN
    FOR r IN (SELECT c.NOMBRE || ' ' || c.APELLIDOS AS Nombre_Completo,
                     TO_CHAR(c.FECHA_INCLUSION, 'YYYY') AS Anio_Suscripcion,
                     COUNT(rp.REPRODUCCION_ID) AS Cantidad_Peliculas_Reproducidas,
                     COUNT(d.DESCRAGA_ID) AS Cantidad_Total_Descargas,
                     MAX(p.TITULO) AS Ultima_Pelicula_Reproducida,
                     MAX(rp.FECHA_INICIO) AS Fecha_Ultima_Reproduccion
              FROM CLIENTE c
              LEFT JOIN REPRODUCCIOINES rp ON c.CLIENTE_ID = rp.CLIENTE_ID
              LEFT JOIN DESCARGAS d ON c.CLIENTE_ID = d.CLIENTE_ID
              LEFT JOIN VIDEO v ON d.VIDEO_ID = v.VIDEO_ID
              LEFT JOIN PELICULA p ON v.VIDEO_ID = p.VIDEO_ID
              GROUP BY c.NOMBRE, c.APELLIDOS, c.FECHA_INCLUSION)
    LOOP
        DBMS_OUTPUT.PUT_LINE('Nombre Completo: ' || r.Nombre_Completo || 
                             ', Ano de Suscripcion: ' || r.Anio_Suscripcion || 
                             ', Peliculas Reproducidas: ' || r.Cantidad_Peliculas_Reproducidas || 
                             ', Descargas Totales: ' || r.Cantidad_Total_Descargas || 
                             ', Ultima Pelicula Reproducida: ' || r.Ultima_Pelicula_Reproducida || 
                             ', Fecha Ultima Reproduccion: ' || TO_CHAR(r.Fecha_Ultima_Reproduccion, 'DD-MON-YYYY HH24:MI:SS'));
    END LOOP;
END InfoClientes;
/