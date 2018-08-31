class Artical < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
					  length: {maximum: 5} 
end
