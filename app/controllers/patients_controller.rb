class PatientsController < ApplicationController

  def new

  end

  def show
    @patient = Patient.find(params[:id])
    @medications = Medication.all
  end


end