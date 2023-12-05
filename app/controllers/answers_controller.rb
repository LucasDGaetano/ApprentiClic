class AnswersController < ApplicationController

  def create
    @answer = Answer.new(answers_params)
    comment = Comment.find(params[:comment_id])
    @answer.comment = comment
    @answer.user = current_user
    if @answer.save
      redirect_to course_path(comment.course)
    else
      render "course/show", status: :unprocessable_entity
    end
  end

  private

  def answers_params
    params.require('answer').permit(:content)
  end
end
