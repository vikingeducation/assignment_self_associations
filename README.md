assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

## Many-to-many self-reflective relationship
Many Dogs _bark_ at many other Dogs.

We'll create a simple `Dog` model with these associations:

A `barker` `barks_at` many other `barkees`.

A `barkee` `is_barked_at_by` many other `barkers`.

Our join table will be named `Barkings` and will have the composite foreign key `[barker_id, barkee_id]`.
