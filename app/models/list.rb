class List < ApplicationRecord
	belongs_to :user
	has_many :tasks
	mount_uploader :avatar, AvatarUploader
end
