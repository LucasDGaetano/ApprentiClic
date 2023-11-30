class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @completed_courses = current_user.users_courses.select { |uc| uc.users_chapters.all?(&:done) }
    @completed_courses_count = @completed_courses.count
    #current_user.courses.joins(:user_courses).where(user_course: { progress: 100 }).count
  end
end
