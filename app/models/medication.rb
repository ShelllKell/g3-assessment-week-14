class Medication < ActiveRecord::Base


  has_many :prescriptions, through: :patients

end