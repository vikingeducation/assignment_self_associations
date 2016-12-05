class ColleagueConnection < ApplicationRecord

  belongs_to :inviting_colleague, foreign_key: :invitor_id,
                                    class_name:  "Professional"

  belongs_to :receiving_colleague,   foreign_key: :invitee_id,
                                    class_name:  "Professional"

  validates :invitor_id, uniqueness: { scope: :invitee_id }
end
