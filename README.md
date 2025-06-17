# ABP-N-9
ABP- Programación-Base de Datos

<h1>Edu.Punilla</h1>
</p>

</p>

<h2>INTEGRANTES</h2>
-D’Aloia Mariela Anahí
-Fernández Cristian Mauricio
-Tort Ludmila Cristal
-Vargas Gonzalo Nicolás
</p>

</p>

<h2>DESCRIPCIÓN DEL PROYECTO</h2>
Desarrollo de un sistema de registro y gestión de usuarios basado en roles e implementación en entorno de consola con base de datos local.

</p>

</p>

<h2>FUNDAMENTACIÓN</h2>
La elección de una carrera es un momento clave. En zonas como el Valle de Punilla, la información sobre la oferta académica suele estar dispersa, dificultando la toma de decisiones. Este proyecto busca reunir en un solo sitio todos los datos relevantes para aquellas personas que necesiten conocer qué, dónde, cómo estudiar cerca de casa. Ofreciendo el plus de poder encontrar fácilmente posibles compañeros de estudio que se encuentren dentro del área de Punilla.
Posibles Funcionalidades o Áreas de Enfoque Inicial
Unificamos la información de todas las ofertas educativas del nivel terciario o superior del área de Punilla. Enfocado a personas de todas las edades de dicho departamento que quieran iniciar sus estudios.
</p>

</p>

<h2>OBJETIVO</h2>
Desarrollar una aplicación de consola con un menú interactivo que permita gestionar usuarios de acuerdo con su rol, diferenciando entre administradores y usuarios estándar. El sistema incluye también funciones como registro y acceso de usuarios, garantizando un control adecuado sobre quién puede acceder a cada función. A su vez, se implementará una base de datos local que asegure el almacenamiento, organización y manipulación de la información, favoreciendo una administración segura y ordenada de los datos. 

</p>

</p>

<h2>ORGANIZACIÓN DE TAREAS</h2>
El proyecto fue desarrollado de forma conjunta por todos los miembros del equipo: Cristian, Gonzalo, Maru y Cristal. Desde el comienzo, coordinamos el trabajo en equipo para organizar las tareas y definir los pasos a seguir.
Aunque en ciertos momentos cada integrante asume responsabilidades particulares, el eje central fue siempre la colaboración. Nos acompañamos en la lógica de programación, en la detección y corrección de errores, y en la implementación de las distintas funcionalidades.


<h2>FUNCIONAMIENTO DEL PROGRAMA</h2>
Registro e inicio de sesión: El programa inicia mostrando un menú principal con opciones para registrarse o iniciar sesión:
--- USUARIOS ---
Registrarse
Iniciar sesión
Salir
Si el usuario elige registrarse, se le solicita: nombre, mail y contraseña.
Si elige iniciar sesión, se validan email y contraseña.
Funcionalidades como usuario estandar: Una vez autenticado, si el usuario tiene el rol usuario, accede al siguiente menú:
--- MENÚ USUARIO —
1. Ver mis datos
2. Cerrar sesión


Si el usuario autenticado ingresa con los datos que se muestran aquí abajo, el rol admin, accede a un menú de administrador:

if _name_ =="_main_":
    #Cargar un admin por defecto
    usuarios.append(Usuario("admin", "admin@email.com", "admin123", "admin"))
    menu_principal()

    
--- Menú Administrador ---
1. Ver todos los usuarios
2. Cambiar rol de usuario
3. Eliminar usuario
4. Cerrar sesión


Desde aquí puede:
Ver todos los usuarios registrados.
Eliminar usuarios por ID.
Modificar el rol de cualquier usuario (usuario ↔ admin).


 Script BASE DE DATOS
La aplicación trabaja con una base de datos MySQL llamada sistema_de_usuarios ,la cual contiene una tabla de usuarios. 

La tabla almacena:
ID de usuario
Nombre
Email (único)
Contraseña
Rol (admin o estandar)

Script de creación:

REATE DATABASE sistema_de_usuarios;

USE sistema_de_usuarios;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(40) NOT NULL UNIQUE,
    contrasena VARCHAR(30) NOT NULL,
    rol_id INT NOT NULL,

Incluye sentencias para crear, modificar y eliminar usuarios.

INSERT INTO usuarios (nombre, email, contrasena, rol_id, estado)
VALUES ('gonzalo vargas ', 'gonzavargas687@gmail.com', 'Gonzalo123', 1, 'activo');
SELECT * FROM usuarios;
UPDATE usuarios SET email = 'gonzalovargas576@gmail.com' WHERE id = 1;
DELETE FROM usuarios WHERE id = 1;
USE sistema_de_usuarios;

INSERT INTO usuarios (nombre, email, contrasena, rol_id, estado)
VALUES ('Tort Ludmila Cristal', 'tortcristal@gmail.com', 'Cristal89', 2, 'activo'); 
UPDATE usuarios SET email = 'nuevo_email@example.com' WHERE id = 2; 

