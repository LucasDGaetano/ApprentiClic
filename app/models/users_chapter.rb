class UsersChapter < ApplicationRecord
  belongs_to :users_course
  belongs_to :chapter

  def done?
    done ? 'Bravo !' : "J'ai compris !"
  end
end
