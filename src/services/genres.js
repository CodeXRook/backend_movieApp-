const { db } = require('./dbConnect');
const GenreService = {};

//CREATE
GenreService.read = (id) => {
    const sql = `
    SELECT *
    FROM genres
    Where
    genre.id $[id]
    `;
};