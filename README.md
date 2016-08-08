Morgan and Alex's assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...



## Homeowners are self-reflective

join-table: neighbors
belongs_to neighbor_initiator, foreign_key: neighbor_to, class_name: Homeowner
belongs_to neighbor_recipient, foreign_key: neighbor_of, class_name: Homeowner


Homeowner has_many initiated_neighborings, foreign_key: neighbor_of, class_name: Neighbor
          has_many neighboring_homeowners, through: initiated_neighborings, source: neighbor_initiator


Homeowner has_many received_neighborings, foreign_key: neighbor_to, class_name: Neighbor
          has_many homeowners_neighbored_by, through: received_neighborings, source: neighbor_recipient
