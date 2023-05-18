using cinema as db from '../db/cinema';

// aici am folosit CUP

service CinemaAdmin @(impl: 'srv/cinema.js'){
    entity Rooms as projection on db.Rooms;
    entity Movies as projection on db.Movies;
    entity Actors as projection on db.Actors;
    entity MovieToRoomMapping as select from db.Movie_to_room_mappings;
    entity MOVIE_DETAILS as select from db.MOVIE_DETAILS;
}