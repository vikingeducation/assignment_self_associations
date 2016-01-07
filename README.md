assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

by Sia Karamalegos


## 2-Color Pairings

For this assignment I chose to create a database that lists complementary colors for a dominante base color and a complementary accent color. Both colors are defined in the color table which just contains the field "name".

For example, the base color of charcoal can have many accent colors - bright blue, flaming red, flamingo pink.  Charcoal can also be an accent color for something like white:

```
color = Color.find_by(name: 'charcoal')
color.accents
 > blue, red, pink

color.bases
 > white
```
