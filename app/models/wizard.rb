class Wizard < ActiveRecord::Base
  has_many :initiated_apprenticeships,
           class_name: "Apprenticeship",
           foreign_key: :master_id
  has_many :apprentices,
           through: :initiated_apprenticeships,
           source: :apprentice

  has_many :received_apprenticeships,
           class_name: "Apprenticeship",
           foreign_key: :apprentice_id
  has_many :masters,
           through: :received_apprenticeships,
           source: :master
end
