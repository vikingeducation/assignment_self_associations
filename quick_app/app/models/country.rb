class Country < ActiveRecord::Base
	# has_many :allys

	#For a country initiating an alliance
	has_many :initiated_alliances, :foreign_key => :ally_intiator_id, :class_name => "Ally" , :dependent => :destroy

	has_many :countries_allied_with, :through => :initiated_alliances, :source => :ally_acceptor

	#For a country accepting an alliange
	has_many :recieved_alliance_requests, :foreign_key => :ally_acceptor_id, :class_name => "Ally" , :dependent => :nullify

	has_many :countries_allied_to, :through => :recieved_alliance_requests, :source => :ally_initiator

  
  

end
