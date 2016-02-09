assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

Kelsey and Joshua

Possible relationship: Movie -> Similar movie?

Join table: similars, with viewing_id and similar_id

similars belongs_to movie_initiator
movie has_many similarities (join table)
movie has_many similar_movies through join table

similars belongs_to movie_similar
movie has_many received_similar_movies 

