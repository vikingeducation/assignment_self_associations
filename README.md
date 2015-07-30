assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

-Competitors in a single-elimination tournament have matches against other competitors
-They can face other competitors only once, but can face many other competitors
-The winner defeats the loser, creating a victory
-One competitor has many beaten competitors, and many who have been beaten by
-When one competitor beats another they are the winner, when they are beaten they are the loser

-JOIN table named 'matches'
-foreign keys: winner_id, loser_id

-in matches
  belongs to winner, foreign key is winner_id, class name is competitor
  belongs to loser, foreign key is loser_id, class name is competitor

  validates :loser_id, :uniqueness => { :scope => :winner_id}

-In competitor class,
  has_many victories, foreign key is winner_id, class name is match
  has_many beaten_competitors, through victories, source :loser_id

  has_many losses, foreign key is winner_id, class name is match
  has_many competitors_beaten_by, through losses, source :winner_id
