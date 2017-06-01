class Flerting < ApplicationRecord
  belongs_to :flert_initiator,
             :foreign_key => :flerter_id,
             :class_name => "User"
  belongs_to :flert_recipient,
             :foreign_key => :flertee_id,
             :class_name => "User"

  validates :flertee_id, :uniqueness => {:scope => :flerter_id}
end
