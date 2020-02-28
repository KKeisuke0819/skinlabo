class Genre < ApplicationRecord
	validates :variety, presence: true
	has_many :products
end
