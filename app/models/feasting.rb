class Feasting < ApplicationRecord
  belongs_to :eater, class_name: 'Animal', foreign_key: :predator_id
  belongs_to :eaten, class_name: 'Animal', foreign_key: :prey_id
end
