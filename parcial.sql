CREATE DATABASE veterinaria;




CREATE TABLE MASCOTAS (
ID_MASCOTA SMALLINT (1) NOT NULL,
NOMBRE VARCHAR (20) NOT NULL,
ESPECIE ENUM ("P","G")NOT NULL,
SEXO ENUM ("M","H")NOT NULL,
EDAD SMALLINT(2)NOT NULL,
DUEÑO_APELLIDO VARCHAR (20)NOT NULL,
DUEÑO_NOMBRE VARCHAR (20)NOT NULL,
ESTADO ENUM ("A","B")NOT NULL,
PRIMARY KEY (ID_MASCOTA)
);





INSERT INTO mascotas VALUES (1, "Budy","P","M",6,"Avedaño","Marcia","A");
INSERT INTO mascotas VALUES (2, "Pipo","P","M",2,"Sotile","Marcos","A");
INSERT INTO mascotas VALUES (3, "Luna","G","H",1,"Gomez","Carlos","A");
INSERT INTO mascotas VALUES (4, "Tito","G","M",5,"Gomez","Carlos","A");
INSERT INTO mascotas VALUES (5, "Aron","P","M",3,"Suarez","Lorena","A");
INSERT INTO mascotas VALUES (6, "Canela","P","H",8,"Rodriguez","Fabiana","A");
INSERT INTO mascotas VALUES (7, "Mumy","G","H",11,"Alanis","Javier","B");
INSERT INTO mascotas VALUES (8, "Cacho","P","M",7,"Rodriguez","Fabiana","B");





SELECT COUNT(estado),especie FROM mascotas WHERE estado = "A" GROUP BY especie;
SELECT * FROM mascotas WHERE estado = "A" AND dueño_nombre = "Fabiana";
SELECT AVG(edad) FROM mascotas WHERE especie = "P" AND estado="A";
ALTER TABLE mascotas ADD (vacunas VARCHAR(20) NOT NULL);
ALTER TABLE mascotas MODIFY  nombre  VARCHAR(25);
SELECT edad,nombre FROM mascotas WHERE edad=(SELECT MAX(edad) FROM mascotas);
SELECT dueño_apellido,Dueño_nombre FROM mascotas WHERE edad=(SELECT MIN(edad) FROM mascotas) AND estado="A";
SELECT * FROM mascotas WHERE especie="P" LIMIT 3;