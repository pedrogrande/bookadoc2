class PagesController < ApplicationController
  def admin
  	@patient_profiles = PatientProfile.all
  	@doctor_profiles = DoctorProfile.all
  end

  def contact
  end

  def about
  end

  def privacy
  end
end
