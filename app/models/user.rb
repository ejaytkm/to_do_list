class User < ApplicationRecord
require 'forecast_io'
	has_secure_password 
	has_many :lists
	
end
