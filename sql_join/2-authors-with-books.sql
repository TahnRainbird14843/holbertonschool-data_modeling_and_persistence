SELECT ALL authors.name, books.title FROM authors
LEFT JOIN books ON authors.id = books.author_id
ORDER BY authors.name, books.title ASC;
