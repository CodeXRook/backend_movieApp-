const express = require('express');
const genreRouter = express.Router();
const GenreService = require('../services/genres');

// GET GENRE
genreRouter.get('/:id', (req, res, nexdt) => {
    const { id } = req.params;

    GenreService.read(id)
    .then(data => {
        res.json(data);
    })
    .catch(err => {
        next(err);
    });
});

//CREATE GENRE
genreRouter.post('/', (req, res, next) => {
    const { name } =res.body;

    MovieService.create(name)
    .then(data =>{
        res,json(`Success: Product created with id: ${data.id}`); 
    })
    .catch(err =>{
        next(err);
    })

});

