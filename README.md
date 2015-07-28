assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

Entity: Movie
  Attributes: id, title

Association: MovieRecommendation
  A movie can have many recommended movies
  A movie that's a recommendation for another movie can also have many recommended movies, so it's a X:X relationship.
  Join table name: movie_recommendations
    foreign keys: movie_id, recommended_movie_id

