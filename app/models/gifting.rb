class Gifting < ApplicationRecord

  # Required for the Initiator side: a giver
  belongs_to :gift_recipient, # matches the source alias in the user model
             :foreign_key => :recipient_id, # identifies the column name in this table
             :class_name => "User" # identifies the class it points to

  # Required for the Recipient side: a recipient
  belongs_to :gift_initiator, # matches the source alias in the user model
             :foreign_key => :giver_id, # identifies the column name in this table
             :class_name => "User" # identifies the class it points to

  validates :recipient_id,
            :uniqueness => { :scope => :giver_id }


end
