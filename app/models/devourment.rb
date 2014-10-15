class Devourment < ActiveRecord::Base

  belongs_to :devourer, :class_name => "Animal", :foreign_key => :devourer_id

  belongs_to :devouree, :class_name => "Animal", :foreign_key => :devouree_id


end
