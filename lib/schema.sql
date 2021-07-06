CREATE TABLE series (
    id INTEGER PRIMARY KEY,
    title TEXT,
    author_id INTEGER,
    subgenre_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (subgenre_id) REFERENCES subgenres(id)
);
CREATE TABLE subgenres (
    id INTEGER PRIMARY KEY,
    name TEXT
);
CREATE TABLE authors (
    id INTEGER PRIMARY KEY,
    name TEXT
);
CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT,
    year INTEGER,
    series_id INTEGER,
    FOREIGN KEY (series_id) REFERENCES series(id)
);
CREATE TABLE characters (
    name TEXT,
    species TEXT,
    motto TEXT,
    author_id INTEGER,
    id INTEGER PRIMARY KEY,
    FOREIGN KEY (author_id) REFERENCES authors(id)
);
CREATE TABLE character_books (
    id INTEGER PRIMARY KEY,
    book_id INTEGER,
    character_id INTEGER
);