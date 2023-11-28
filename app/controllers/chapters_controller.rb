class ChaptersController < ApplicationController
  def update
    @chapter = Chapter.find(params[:id])
    @chapter.update_attribute(:done, true)
    redirect_to course_path(@chapter.course)
  end
end
