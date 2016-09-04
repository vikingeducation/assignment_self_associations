Self Associations
============================

Contributors: [Dylan](www.github.com/lynchd2) and [Johnny](www.github.com/jsteenb2)

###Description
This is an exercise in dealing with the mind-melting application of designing self-associating relationships.  The feature here is a home with its neighboring houses. The self association join table holds the initiator(initial house) and recipient(neighbors of initial house) houses. The associations in the models allow you to trace a neighbor from the initial house and vice versa, finding the houses the house neighbors.

###Mental Model

1. Many-to-Many Relationship
	Houses, and neighbors(neighboring houses)
2. Association: House Model
			Initiator: house
			Recipient: other house(s)
   House can have many neighboring houses, and neighboring houses can have many neighbors.
3. We are using a many-to-many self-reflective relationship (as requested).
	* Initiator: house
	* recipient: house(s)
	
