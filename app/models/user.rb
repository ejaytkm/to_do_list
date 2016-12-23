class User < ApplicationRecord
	has_secure_password 
	has_many :lists

def time_now 
end

end
