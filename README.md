assignment_self_associations
============================

## Bideo Wego

This assignment uses only the Rails console to test self associations.
It builds a schema where a `Business` model can have partnerships with
other businesses through a `Partnership` model.

The associations are named as follows:

### Business
- `has_many :initiated_partnerships`
- `has_many :received_partnerships`
- `has_many :partnership_senders`
- `has_many :partnership_receivers`

### Partnership
- `belongs_to :sender`
- `belongs_to :receiver`

A `#partners` method is then placed on the `Business` model to select only those other businesses that have both sent and received a partnership initiation. This represents accepted partnerships on both ends of the association.

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

An assignment by [Viking Code School](http://vikingcodeschool.com)