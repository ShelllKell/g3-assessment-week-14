class Patient < ActiveRecord::Base

  validates_presence_of :first_name, :last_name

  has_many :prescriptions

end
