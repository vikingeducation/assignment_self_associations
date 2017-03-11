assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

X:X relationship
An animal is both predator and prey.
An animal may have many predators and prey, whether they are predator or prey.

```
a = Animal.first
a.eaters  # returns entries from join table
a.eatens # returns entries from join table
a.prey # returns entries from animals table
a.predators # returns entries from animals table

```