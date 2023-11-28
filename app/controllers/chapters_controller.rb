class ChaptersController < ApplicationController
  def update
    @chapter = Chapter.find(params[:id])
    uc = @chapter.course.users_courses.where(user_id: current_user).first
    @chapter.update_attribute(:done, true)
    diviseur = uc.course.chapters.count
    uc.progress += (100 / diviseur).round
    uc.save!
    # uc.course.chapters.where(done: true).count je garde dans un coin a reutiliser dans le dashboard
    redirect_to course_path(@chapter.course)
  end
end
