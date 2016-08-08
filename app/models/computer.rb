class Computer < ApplicationRecord
  has_many :initiated_connections, foreign_key: :user_id, class_name: "Connection"
  has_many :servers, through: :initiated_connections, source: :server
  has_many :recieved_connections, foreign_key: :server_id, class_name: "Connection"
  has_many :users, through: :recieved_connections, source: :user
end
