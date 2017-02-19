class Referencing < ApplicationRecord

	belongs_to :paper_referring, :foreign_key => :paper_id,
                                 :class_name => "ResearchPaper"

  	belongs_to :paper_referred, :foreign_key => :reference_paper_id,
                                :class_name => "ResearchPaper"

  	# Make sure we validate the uniqueness of our records
  	# to avoid duplicate friendings.  This reflects the 
  	# SQL uniqueness constraint we already migrated
  	validates :reference_paper_id, :uniqueness => { :scope => :paper_id }
end
