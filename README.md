assignment_self_associations
by Steven Chang
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

Tasks
1. Identify a many-to-many self-reflective relationship. Here's the catch -- it can't be any of the examples used in the reading (e.g. Users "friending" or "following" each other). Yours doesn't have to be an equal relationship ("friending")... it can be a standard one-way action ("following").

Not too sure if this will work but thought it could be fun to try.
I'm a boxing fan so how about a table of boxers, we could self-reflect them fighting each other. A table of champions vs challengers.
Just for simplicity's sake we could have the join table set as:
champion | challenger

2. Plan out how the association will work.
So it's a X:X self-association because a champion can have many challengers and a challenger can fight many champions

# Implementing a X:X Self-Association

The steps to set up a self-referencing X:X relationship:

1. Build your join table with descriptive foreign key column names

join table: boxing_matches
foreign key: champion_id
foreign key: challenger_id

create_table :boxing_matches do |t|
	t.integer :champion_id, 	:null => false
	t.integer :challenger_id, 	:null => false

	t.timestamps
end

# In real life, there could be lots of duplicate fights when purely going off names but for the sake of practice I will make this unique
add_index :boxing_matches, [:champion_id,:challenger_id], :unique => true


2. Set up your associations to be named descriptively and specify the :foreign_key and :class_name parameters as necessary to make it work.

class Boxer
# for the challenger
has_many :matches_as_challenger, 	:foreign_key => :challenger_id,
									:class_name => "BoxingMatch"
has_many :champions_challenged,		:through => :challenged_matches,
									:source => :champions

# for the champion
has_many :matches_as_champion,		:foreign_key => :champion_id,
									:class_name => "BoxingMatch"
has_many :challengers,				:through => :matches_as_champion,
									:source => :challenger

class BoxingMatch

	belongs_to :champion, 	:foreign_key => :champion_id,
						  	:class_name => "Boxer"

	belongs_to :challenger, :foreign_key => :challenger_id,
							:class_name => "Boxer"

	# There can be lots of duplicate fights in real life between champ and challenger in real life but for the sake of practice, i'll make it unique here. 
	validates :champion_id, :uniqueness => { :scope => :challenger_id }

end

