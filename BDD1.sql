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
CREATE TABLE libro_autor (
    la_libro_codigo_fk VARCHAR(5) NOT NULL,
    la_autor_id_fk INT NOT NULL,
    anio_publicacion INT NOT NULL,
    CONSTRAINT pk_libro_autor PRIMARY KEY (la_libro_codigo_fk, la_autor_id_fk),
    CONSTRAINT fk_libro_autor_libros FOREIGN KEY (la_libro_codigo_fk) REFERENCES libros (codigo),
    CONSTRAINT fk_libro_autor_autores FOREIGN KEY (la_autor_id_fk) REFERENCES autores (id)
);