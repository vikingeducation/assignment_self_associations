class Dog < ApplicationRecord
  # when our Dog is a barker, i.e. he's barking at other Dogs (bad boy!)
  has_many :barks_at, foreign_key: :barker_id, class_name: "Barking", dependent: :destroy
  has_many :barkees, through: :barks_at, source: :barkee

  # when our Dog is a barkee, i.e. he's being barked at by other Dogs (poor boy!)
  has_many :is_barked_at_by, foreign_key: :barkee_id, class_name: "Barking", dependent: :destroy
  has_many :barkers, through: :is_barked_at_by, source: :barker
end
