class Playing < ActiveRecord::Base
  belongs_to :play_initiator, class_name: "Dog",
                              foreign_key: :player_id

  belongs_to :play_receiver,  class_name: "Dog",
                              foreign_key: :playee_id
end
