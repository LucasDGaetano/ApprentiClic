class Course < ApplicationRecord
  has_many :users_courses, dependent: :destroy
  has_many :users, through: :users_courses
  has_many :comments, dependent: :destroy
  has_many :answers, through: :comments

  DIFFICULTIES = %w[Débutant Intermédiaire Avancé]
  CATEGORIES = %w[Souris Clavier Navigation Internet Saisie]

  validates :category, inclusion: { in: CATEGORIES }
  validates :title, presence: true
  validates :description, presence: true
  validates :difficulty, inclusion: { in: DIFFICULTIES }
end
