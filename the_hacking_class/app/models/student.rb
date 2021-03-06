class Student < ApplicationRecord
	validates :username, presence: true, uniqueness: true, length: { in: 4..12 }
	VALID_EMAIL_REGEX = /\A[\w+\-,]+@[a-z\d\-,]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
	validates :password, presence: true, uniqueness: true, length: { in: 6..16 }

	has_one :courses
end
