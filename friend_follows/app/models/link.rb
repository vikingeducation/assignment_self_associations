class Link < ActiveRecord::Base
  
  belongs_to :follow_object, :foreign_key => :follower_id,
                              :class_name => "Person"
                              
  belongs_to :follower, :foreign_key => :follow_id,
                         :class_name => "Person"
                         
  validates :follow_id, :uniqueness => { :scope => :follower_id }

end
