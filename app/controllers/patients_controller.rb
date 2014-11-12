class PatientsController < ApplicationController

  def index
    @prescriptions = Prescription.all
  end

  def show
    @prescriptions = Prescription.all
    @patient = Patient.find(params[:id])
    @medications = Medication.all
  end



end