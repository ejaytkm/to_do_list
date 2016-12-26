class User < ApplicationRecord
require 'forecast_io'

	validates :email, presence: true
	validates :email, uniqueness: true
	validates_format_of :email, :with => /[a-zA-Z0-9_\.\+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-\.]+/


	has_secure_password 
	has_many :lists
		

end
