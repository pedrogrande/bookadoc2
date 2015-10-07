class User < ActiveRecord::Base
	has_one :patient_profile
  has_one :doctor_profile
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :add_user_role

  def add_user_role
  	if self.user_type == 'patient'
  		self.add_role :patient
  	elsif self.user_type == 'doctor'
      self.add_role :doctor
    end
  end

  def self.doctors
    where(user_type: 'doctor')
  end
end
