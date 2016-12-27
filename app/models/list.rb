class List < ApplicationRecord
	belongs_to :user
	has_many :tasks
	mount_uploader :avatar, AvatarUploader

	def self.search_title_description(search)
		if search.present?
			where("title @@ :q or description @@ :q", q: "%#{search}")
		else 
			scopeed
		end
	end 

end
