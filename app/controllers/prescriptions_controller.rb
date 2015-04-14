class PrescriptionsController < ApplicationController
1
  def new
    @patient = Patient.find(params[:patient_id])
    @prescription = Prescription.new
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @prescription = Prescription.new(allowed_params.merge(user_id: current_user.id, patient: @patient))

      if @prescription.save
        @patient.prescriptions << @prescription
      redirect_to patient_path(params[:patient_id])
      flash[:notice] = "Your prescription has been created."
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:prescription).permit(:medication_id, :dosage, :schedule, :starts_on, :ends_on)
  end

end
