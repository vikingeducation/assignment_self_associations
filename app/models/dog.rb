class Dog < ActiveRecord::Base

  # Initiator
  has_many :initiated_playings, class_name: 'Playing',
                                foreign_key: :player_id,
                                dependent: :destroy
  has_many :playees,  through: :initiated_playings,
                      source: :play_receiver

  # Recipient
  has_many :received_playings,  class_name: 'Playing',
                                foreign_key: :playee_id,
                                dependent: :destroy
  has_many :players,  through: :received_playings,
                      source: :play_initiator
end
