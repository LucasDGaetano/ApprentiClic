class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  has_one :course, through: :comment

  validates :user_id, presence: true
  validates :comment_id, presence: true
end
