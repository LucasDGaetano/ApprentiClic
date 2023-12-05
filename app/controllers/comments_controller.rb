class CommentsController < ApplicationController

  def show
    @user = User.find(params[:id])
    @course = Course.find(params[:id])
    @comment = Comment.all
  end

  def create
    @comment = Comment.new(comments_params)
    course = Course.find(params[:course_id])
    @comment.course = course
    @comment.user = current_user
    if @comment.save
      respond_to do |format|
        format.html { redirect_to course_path(course) }
        format.text { render partial: "comments/comment", locals: { answer: Answer.new, comment: @comment }, formats: :html }
      end
    else
      render "course/show", status: :unprocessable_entity
    end
  end

  private

  def comments_params
    params.require('comment').permit(:content)
  end
end
