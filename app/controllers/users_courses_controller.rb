class UsersCoursesController < ApplicationController
  def create
    uc = UsersCourse.new
    uc.user = current_user
    course = Course.find(params[:course_id])
    uc.course = course

    if uc.save!
      redirect_to course_path(course)
    else
      render "courses/overview", status: :unprocessable_entity
    end
  end
end
