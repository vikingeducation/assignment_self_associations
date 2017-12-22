class User < ApplicationRecord

  # Associations for the gift_giver
  has_many :giftings, foreign_key: :giver_id, dependent: :destroy
  has_many :gift_recipients, through: :giftings

  # Associations for the gift_recipient
  has_many :giftings, foreign_key: :recipient_id
  has_many :gift_givers, through: :giftings


  # has_many :followers, through: :followings
  # has_many :followees, through: :followings, class_name: :User, source: :followee
end
