class PatientProfile < ActiveRecord::Base
  belongs_to :user

  geocoded_by :full_street_address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates

	def full_street_address
		[address, suburb, state, postcode, country].compact.join(', ')
	end
end
