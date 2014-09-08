class PrescriptionsController < ApplicationController

  # def index
  #   @prescriptions = Prescription.all
  # end

  # def show
  #   @prescription = Prescription.new.find(params[:patient_id])
  # end

  def new
    @prescription = Prescription.new
    @patient = Patient.find(params[:patient_id])
  end

  def create
    @prescription = Prescription.new(allowed_parameters)
    # @patient = Patient.find(params[:patient_id])
    @prescription.patient = @patient

    if @prescription.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def allowed_parameters
    params.require(:prescription).permit(:patient_id, :medication_id, :dosage, :schedule, :starts_on, :ends_on)
  end
end