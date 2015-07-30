class Treating < ActiveRecord::Base

  #A patient treated by Physician
  belongs_to :patients,  foreign_key: :patient_id,
                          class_name: "Person"

  # A Physician treating a patient
  belongs_to :physicians,    foreign_key: :physician_id,
                          class_name: "Person"

  validates :patient_id, :uniqueness => { :scope => :physician_id }
end
