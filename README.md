assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

-Competitors in a tournament have matches against other competitors
-They can face other competitors only once, but can face many other competitors
-The winner beats the loser, creating a beating_instance
-One competitor has many beaten competitors, and many who have been beaten by
-When one competitor beats another they are the winner, when they are beaten they are the loser

-JOIN table named 'beatings'
-foreign keys: winner_id, loser_id

-in beatings belongs to winner, foreign key is winner_id, class name is competitor

-In competitor class, has_many beatings, foreign key is loser_id, class name is beating
