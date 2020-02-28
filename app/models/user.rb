class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :product, optional: true
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  acts_as_paranoid
end
