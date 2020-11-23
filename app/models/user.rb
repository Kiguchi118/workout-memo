class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :sex, presence: true
  validates :height, presence: true
  enum sex: { male: 0, female: 1 }

  has_many :workouts, dependent: :destroy
end
