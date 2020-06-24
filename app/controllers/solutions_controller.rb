class SolutionsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @solution = @question.solutions.build(question_id: params[:question_id])
    @solution.question_id = @question.id
    @solution.save
    redirect_to questions_path
  end
end
