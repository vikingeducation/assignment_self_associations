class Gifting < ApplicationRecord

  # Associations for the gift_giver
  belongs_to :gift_recipient, class_name: :User, foreign_key: :recipient_id

  # Associations for the gift_recipient
  belongs_to :gift_giver, class_name: :User, foreign_key: :giver_id

end
