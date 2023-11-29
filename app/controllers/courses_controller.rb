class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def overview
    @uc = UsersCourse.new
    @course = Course.find(params[:id])
  end

  def show
    @course = Course.find(params[:id])
    @chapters = @course.chapters
  end

end
