class Prescription < ActiveRecord::Base

  belongs_to :patient
  belongs_to :medication


  validates :dosage, presence: {message: "can't be blank"}, format: { with: /\A[0-9]+\z/, message: "has to start with number"}
  validates :schedule, presence: {message: "can't be blank"}

  validates :medication, :dosage, :schedule, :starts_on, :ends_on, :presence => true

  # validates :ends_on

  # validate :start_not_greater_than_end
  #
  #
  # def start_not_greater_than_end
  #   if :starts_on > :ends_on
  #     errors.add(:ends_on, "must be after starts on")
  #   end
  # end

  def get_user_name(id)
    User.find(id).name
  end


  def patient_name
    patient.full_name
  end


end
