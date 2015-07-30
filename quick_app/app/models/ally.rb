class Ally < ActiveRecord::Base
	
	belongs_to :ally_initiator, :foreign_key => :ally_intiator_id, :class_name => "Country"

	belongs_to :ally_acceptor, :foreign_key => :ally_acceptor_id, :class_name => "Country"

	validates :ally_acceptor_id, :uniqueness => {:scope => :ally_intiator_id}

end
