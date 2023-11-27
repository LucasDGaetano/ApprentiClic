class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :answers, dependent: :destroy

  validates :user_id, presence: true
  validates :course_id, presence: true
end
