class AnswersController < ApplicationController

  def create
    @answer = Answer.new(answers_params)
    comment = Comment.find(params[:comment_id])
    @answer.comment = comment
    @answer.user = current_user
    if @answer.save
      respond_to do |format|
        format.html { redirect_to course_path(comment.course) }
        format.text { render partial: "comments/comment", locals: { comment: comment, answer: Answer.new }, formats: :html }
      end
    else
      render "course/show", status: :unprocessable_entity
    end
  end

  private

  def answers_params
    params.require('answer').permit(:content)
  end
end
