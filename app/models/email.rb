class Email < ActiveRecord::Base

	# The Sender side
  belongs_to :email_sender, 	:foreign_key => :sender_id,
                              :class_name => "User"

  # The Recipient side
  belongs_to :email_recipient,  :foreign_key => :recipient_id,
                                :class_name => "User"

  # Make sure we validate the uniqueness of our records
  # to avoid duplicate friendings.  This reflects the 
  # SQL uniqueness constraint we already migrated
  validates :recipient_id, :uniqueness => { :scope => :sender_id }

end