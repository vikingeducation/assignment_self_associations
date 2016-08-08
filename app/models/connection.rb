class Connection < ApplicationRecord
  belongs_to :user, foreign_key: :user_id, class_name: "Computer"
  belongs_to :server, foreign_key: :server_id, class_name: "Computer", dependent: :destroy
end
