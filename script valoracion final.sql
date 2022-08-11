CREATE DATABASE Peluqueria_Canina;

USE Peluqueria_Canina;

CREATE TABLE Dueno
 (
 Dni INT NOT NULL PRIMARY KEY,
 Nombre VARCHAR(30)NOT NULL,
 Apellido VARCHAR(30)NOT NULL,
 Telefono INT NOT NULL,
 Direccion VARCHAR(30)NOT NULL
 );

CREATE TABLE Perro
 (
 ID_perro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 Nombre VARCHAR(10)NOT NULL,
 Fecha_nac DATE NOT NULL,
 Sexo VARCHAR(10)NOT NULL,
 Dni_dueno INT,
 CONSTRAINT per_dni_fk FOREIGN KEY(Dni_dueno)
 REFERENCES Dueno(Dni)
 );
 
 CREATE TABLE Historial
  (
  ID_historial INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Fecha  DATE,
  Perro INT NOT NULL,
  Descripcion VARCHAR(70)NOT NULL,
  Monto INT NOT NULL,
  CONSTRAINT his_per_fk FOREIGN KEY(Perro)
  REFERENCES Perro(ID_perro)
  );
  
  INSERT INTO Dueno VALUES
  ('35798087','Juan','Torres','155123123','Calle libertad 1105'),
  ('32001527','Micaela','Luna','152222353','Calle colon 255'),
  ('16455637','Sofia','Garay','155323798','Calle oncativo 378'),
  ('25777128','Julian','Ortiz','155628628','Calle liniers 828');
  
  INSERT INTO Perro (Nombre,Fecha_nac,Sexo,Dni_dueno) VALUES
  ('Pipo','22-07-25','Macho','35798087'),
  ('Paca','21-05-21','Hembra','16455637'),
  ('Lino','20-06-15','Macho','32001527');
  
  INSERT INTO Historial (Fecha,Perro,Descripcion,Monto) VALUES
  ('22-08-05','1','Corte y lavado','1500'),
  ('22-08-06','3','Unas','500');
  
  #script punto 4:
  
  UPDATE Perro
  SET Fecha_nac='21-05-11'
  WHERE ID_perro=2;
  
  

  