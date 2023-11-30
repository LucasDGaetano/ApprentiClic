class Course < ApplicationRecord
  has_many :users_courses, dependent: :destroy
  has_many :users, through: :users_courses
  has_many :comments, dependent: :destroy
  has_many :answers, through: :comments
  has_many :chapters, dependent: :destroy
  has_one_attached :cover

  DIFFICULTIES = %w[Débutant Intermédiaire Avancé]
  CATEGORIES = %w[Souris Clavier Navigation Internet Saisie Messagerie]

  validates :category, inclusion: { in: CATEGORIES }
  validates :title, presence: true
  validates :description, presence: true
  validates :difficulty, inclusion: { in: DIFFICULTIES }

  include PgSearch::Model
  pg_search_scope :search_by_title,
    against: [:title],
    using: {
      tsearch: { prefix: true }
    }
end
