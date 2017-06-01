class User < ApplicationRecord
  has_many :initiated_flertings,
           :foreign_key => :flerter_id,
           :class_name => "Flerting"
  has_many :flerted_users,
           :through => :initiated_flertings,
           :source => :flert_recipient

  has_many :received_flertings,
           :foreign_key => :flertee_id,
           :class_name => "Flerting"
  has_many :users_flerted_by,
           :through => :received_flertings,
           :source => :flert_initiator
end
