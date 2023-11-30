class CoursesController < ApplicationController

  def index
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

  def overview
    @uc = UsersCourse.new
    @course = Course.find(params[:id])
  end

  def show
    @course = Course.find(params[:id])
    @chapters = @course.chapters
  end

end
