class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :users_courses, dependent: :destroy
  has_many :courses, through: :users_courses
  has_many :users_chapters, through: :users_courses, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :answers, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
