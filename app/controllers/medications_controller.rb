class MedicationsController < ApplicationController


  def show
    @medication = Medication.find(params[:id])
    @medications = Medication.all
    @patients = Patient.all
  end


end