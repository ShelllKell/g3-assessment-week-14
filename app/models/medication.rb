class Medication < ActiveRecord::Base

  has_many :patients
  has_many :prescriptions

end