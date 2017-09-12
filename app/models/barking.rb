class Barking < ApplicationRecord
  # Our barking Dog, i.e. the initiator
  belongs_to :barker, foreign_key: :barker_id, class_name: "Dog"

  # Our Dog being barked at, i.e. the recipient
  belongs_to :barkee, foreign_key: :barkee_id, class_name: "Dog"

  # ensures that our initiator/recipient pairs are unique
  validates :barker_id, uniqueness: { scope: :barkee_id }
end
