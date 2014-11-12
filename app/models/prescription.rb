class Prescription < ActiveRecord::Base

  belongs_to :patient
  belongs_to :medication

  validates :dosage, presence: {message: "can't be blank"}
  validates :schedule, presence: {message: "can't be blank"}

end