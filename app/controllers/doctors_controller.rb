class DoctorsController < ApplicationController
  def create
    @clinic = Clinic.find(params[:clinic_id])
    @doctor = @clinic.doctors.create(params[:doctor])
    redirect_to clinic_path(@clinic), :notice => 'Create Successful'
  end

  def destroy
    @clinic = Clinic.find(params[:clinic_id])
    @doctor = @clinic.doctors.find(params[:id])
    @doctor.destroy
    redirect_to clinic_path(@clinic)
  end
  
  def edit
    @clinic = Clinic.find(params[:clinic_id])
    @doctor = @clinic.doctors.find(params[:id])
  end

  def update
    @clinic = Clinic.find(params[:clinic_id])
    @doctor = @clinic.doctors.find(params[:id])
    respond_to do |format|
    	if @doctor.update_attributes(params[:doctor])
	   format.html {redirect_to(@clinic, :notice => 'Update Complete')}
        else 
           format.html {redirect_to(@clinic, :notice => 'Update Failed')}
    	end
    end
  end
end
