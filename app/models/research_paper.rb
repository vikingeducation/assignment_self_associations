class ResearchPaper < ApplicationRecord

	# When acting as the paper referencing other papers
  	has_many :initiated_referencings, :foreign_key => :paper_id, :class_name => "Referencing", :dependent => :nullify
  	has_many :references, :through => :initiated_referencings, :source => :paper_referred

  	# When acting as the paper referenced by other papers
  	has_many :received_referencings, :foreign_key => :reference_paper_id, :class_name => "Referencing"
  	has_many :citations, :through => :received_referencings, :source => :paper_referring

end