class DoctorProfile < ActiveRecord::Base
  belongs_to :user

  mount_uploader :photo, DoctorPhotoUploader

  def doctor_identity
  	[title, first_name, last_name, post_nominals].compact.join(' ')
  end

  extend FriendlyId
  friendly_id :doctor_identity, use: :slugged

  acts_as_taggable
  
end
