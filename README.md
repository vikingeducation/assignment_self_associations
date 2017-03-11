assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

X:X relationship
Join table: Feasting
Main table: Animal

```
a = Animal.first
a.initiated_feastings  # returns entries from join table
a.received_feastings # returns entries from join table
a.prey # returns entries from animals table
a.predators # returns entries from animals table

```