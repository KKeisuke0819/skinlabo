class Product < ApplicationRecord
	belongs_to :genre
	attachment :image
	has_many :users, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
        def favorited_by?(user)
          favorites.where(user_id: user.id).exists?
        end
end
