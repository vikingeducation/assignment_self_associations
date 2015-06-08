class Apprenticeship < ActiveRecord::Base
  belongs_to :master,
             foreign_key: :master_id,
             class_name: "Wizard"
  belongs_to :apprentice,
             foreign_key: :apprentice_id,
             class_name: "Wizard"

  validates :apprentice_id, uniqueness: { scope: :master_id }
end
