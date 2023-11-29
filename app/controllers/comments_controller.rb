class CommentsController < ApplicationController

  def show
    @user = User.find(params[:id])
    @course = Course.find(params[:id])
    @comment = Comment.all
  end

  def create
    @comment = Comment.new(comments_params)
    if @comment.save
      redirect_to course_path(@course)
    else
      render "course/show", status: :unprocessable_entity
    end
  end
end
