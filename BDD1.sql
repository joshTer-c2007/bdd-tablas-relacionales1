CREATE TABLE libros (
    codigo VARCHAR(5),
    titulo VARCHAR(50) NOT NULL,
    paginas INT NOT NULL,
    CONSTRAINT pk_libros PRIMARY KEY (codigo)
);

CREATE TABLE autores (
    id INT,
    nombre VARCHAR(50) NOT NULL,
    pais VARCHAR(30) NOT NULL,
    CONSTRAINT pk_autores PRIMARY KEY (id)
);