class UsersChapter < ApplicationRecord
  belongs_to :users_course
  belongs_to :chapter

  def done?
    done ? "<i class='fa-solid fa-check'></i>" : "J'ai compris !"
  end
end
