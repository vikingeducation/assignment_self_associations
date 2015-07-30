class Person < ActiveRecord::Base

  # A patient:
  has_many :treatments_received,  foreign_key: :patient_id,
                                  class_name: "Treating"
  has_many :treating_physicians,  through: :treatments_received,
                                  source: :physicians,
                                  dependent: :destroy

  # A physician
  has_many :treatments_given,     foreign_key: :physician_id,
                                  class_name: "Treating"
  has_many :patients_treated,     through: :treatments_given,
                                  source: :patients,
                                  dependent: :destroy
end
