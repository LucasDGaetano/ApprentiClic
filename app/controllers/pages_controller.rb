class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @courses = Course.all
    if params[:category].present?
      sql_subquery = "category ILIKE :query"
      @courses = @courses.where(sql_subquery, query: "%#{params[:category]}%")
    end
    if params[:difficulty].present?
      sql_subquery = "difficulty ILIKE :query"
      @courses = @courses.where(sql_subquery, query: "%#{params[:difficulty]}%")
    end
    if params[:query].present?
      sql_subquery = "title ILIKE :query"
      @courses = @courses.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def dashboard
    @completed_courses = current_user.users_courses.select { |uc| uc.users_chapters.all?(&:done) }
    @completed_courses_count = @completed_courses.count
    #current_user.courses.joins(:user_courses).where(user_course: { progress: 100 }).count
  end
end
