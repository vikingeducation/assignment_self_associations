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

  def reciprocated_playings
    sql = "
      SELECT DISTINCT dogs.*
      FROM dogs
      JOIN playings
        ON dogs.id = playings.player_id
      JOIN playings AS reflected_playings
        ON reflected_playings.player_id = playings.playee_id
      WHERE reflected_playings.player_id = ?
      "

    Dog.find_by_sql([sql,self.id])
  end
end
