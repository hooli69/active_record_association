class Comment < ApplicationRecord
	validates :comments, presence: true

	has_many :subcomments
end
