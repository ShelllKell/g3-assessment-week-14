class Prescription < ActiveRecord::Base

  belongs_to :patient
  has_one :medication

  validates :medication, presence: {:message => "Medication can't be blank"}
  validates :dosage, presence: {:message => "Dosage can't be blank"}
  validates :schedule, presence: {:message => "Schedule can't be blank"}
  validates :starts_on, presence: {:message => "Start date can't be blank"}
  validates :ends_on, presence: {:message => "End date can't be blank"}

end