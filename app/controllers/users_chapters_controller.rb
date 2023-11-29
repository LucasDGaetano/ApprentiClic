class UsersChaptersController < ApplicationController
  def update
    @user_chapter = UsersChapter.find(params[:id])
    uc = @user_chapter.users_course
    @user_chapter.update_attribute(:done, true)
    diviseur = uc.users_chapters.count
    if uc.users_chapters.all?(&:done)
      uc.progress = 100
    else
      uc.progress += (100 / diviseur).round
    end
    uc.save!
    # uc.user_chapters.where(done: true).count je garde dans un coin a reutiliser dans le dashboard
    redirect_to course_path(uc.course)
  end
end
