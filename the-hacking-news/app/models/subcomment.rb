class Subcomment < ApplicationRecord
	validates :comments, presence: true
end