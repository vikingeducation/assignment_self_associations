class Person < ActiveRecord::Base

  has_many :self_links, :foreign_key => :follow_id,
                         :class_name => "Link",
                         :dependent => :nullify
  
  has_many :follow_links, :foreign_key => :follower_id,
                          :class_name => "Link",
                          :dependent => :nullify
                   
  has_many :follow_objects, :through => :self_links,
                             :source => :follow_object
end
