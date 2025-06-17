CREATE DATABASE sistema_de_usuarios;
USE sistema_de_usuarios;
CREATE TABLE roles (id INT AUTO_INCREMENT PRIMARY KEY,nombre_rol VARCHAR(50) NOT NULL UNIQUE);
INSERT INTO roles (nombre_rol) VALUES 
('admin'), 
('usuario_estándar');
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(40) NOT NULL UNIQUE,
    contrasena VARCHAR(30) NOT NULL,
    rol_id INT NOT NULL,
    estado ENUM('activo', 'inactivo') DEFAULT 'activo',
    FOREIGN KEY (rol_id) REFERENCES roles(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE );
INSERT INTO usuarios (nombre, email, contrasena, rol_id, estado)
VALUES ('gonzalo vargas ', 'gonzavargas687@gmail.com', 'Gonzalo123', 1, 'activo');
SELECT * FROM usuarios;
SELECT * FROM usuarios WHERE estado = 'activo';
SELECT * FROM usuarios WHERE id = 1;
UPDATE usuarios SET estado = 'inactivo' WHERE id = 1;
UPDATE usuarios SET email = 'gonzalovargas576@gmail.com' WHERE id = 1;
DELETE FROM usuarios WHERE id = 1;
INSERT INTO usuarios (nombre, email, contrasena, rol_id, estado)
VALUES ('mariela  D´Aloia', 'marudaloia@gmail.com', 'Mar376', 2, 'activo');
INSERT INTO usuarios (nombre, email, contrasena, rol_id, estado)
VALUES ('Tort Ludmila Cristal', 'tortcristal@gmail.com', 'Cristal89', 2, 'activo');
INSERT INTO usuarios (nombre, email, contrasena, rol_id, estado)
VALUES ('Cristian Mauricio Fernandez', 'fernandez.cristian.m@gmail.com', 'Cris569', 2, 'inactivo');


