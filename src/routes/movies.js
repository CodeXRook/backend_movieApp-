const express = require('express');
const movieRouter = express.Router();
const MovieService = require('../services/movies');

//CREATE NEW MOVIE
movieRouter.post('/', (req, res, next) =>{
    const { title, genre_id, img_url} = res.body;

    MovieService.create(title, genre_id, img_url)
        .then(data => {
            res.json(`Success: New movie created with ID: ${data.id}`);
        })
        .catch(err => {
            next(err);
        });
});


//GET MOVIE INFO
movieRouter.get('./:id', (req, res, next) =>{
    const { id } = req.params;

    MovieService.read(id)
    .then(data => {
        res.json(data);
    })
    .catch(err => {
        next(err);
    });
});

movieRouter.get('/:id',(req, res, next) =>{
    const { id } =req.params;

    MovieService.read(id)
    .then(data => {
        releaseEvents.json(data);
    })
    .catch(err => {
        next(err);
      });
});

