class ChaptersController < ApplicationController
  def update
    @chapter = Chapter.find(params[:id])
    uc = @chapter.course.users_courses.where(user_id: current_user)
    uc.progress += (100 / course.chapters.where(done: true).count).round
    @chapter.update_attribute(:done, true)
    redirect_to course_path(@chapter.course)
  end
end
