class User < ActiveRecord::Base

	# When sending an email to the recipient
  has_many :sent_emails, 				  :foreign_key => :sender_id,
                                  :class_name => "Email"
  has_many :emailed_users,        :through => :sent_emails,
                                  :source => :email_recipient

  # When acting as the recipient of the email
  has_many :received_emails,  		:foreign_key => :recipient_id,
                                  :class_name => "Email"
  has_many :users_emailed_by,     :through => :received_emails,
                                  :source => :email_sender
end