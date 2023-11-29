class UsersChapter < ApplicationRecord
  belongs_to :users_course
  belongs_to :chapter
end
