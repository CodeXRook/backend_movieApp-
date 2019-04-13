const pgp =require('pg-promis')({});
const db = pgp('process.env,DATABASE_URL || postgres://localhost/movie_app');

module.exports ={
    db,
}