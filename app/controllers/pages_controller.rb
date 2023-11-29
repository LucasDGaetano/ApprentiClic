class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @completed_courses = current_user.courses.select { |course| course.chapters.all? { |chapter| chapter.done? } }
    @completed_courses = @completed_courses.count
    #current_user.courses.joins(:user_courses).where(user_course: { progress: 100 }).count
  end
end
