class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard

    @current_courses_easy = current_user.courses.where(difficulty: Course::DIFFICULTIES.first)
    @current_courses_medium = current_user.courses.where(difficulty: Course::DIFFICULTIES.second)
    @current_courses_hard = current_user.courses.where(difficulty: Course::DIFFICULTIES.third)

    @completed_courses = current_user.users_courses.select { |uc| uc.users_chapters.all?(&:done) }
    @completed_courses_count = @completed_courses.count

    @completed_courses_easy = @completed_courses.select { |uc| uc.course.difficulty == Course::DIFFICULTIES.first }
    @completed_courses_medium = @completed_courses.select { |uc| uc.course.difficulty == Course::DIFFICULTIES.second }
    @completed_courses_hard = @completed_courses.select { |uc| uc.course.difficulty == Course::DIFFICULTIES.third }
    #current_user.courses.joins(:user_courses).where(user_course: { progress: 100 }).count
  end
end
