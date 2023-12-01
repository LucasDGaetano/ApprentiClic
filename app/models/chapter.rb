class Chapter < ApplicationRecord
  belongs_to :course
  has_many :users_chapters
  has_one_attached :photo
  has_one_attached :video

end
