class SolutionsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @solution = @question.solutions.build(solution_params)
    @solution.question_id = @question.id
    if @solution.save
      redirect_to question_path, notice: "回答を投稿しました。"
    else
      flash.now[:alert] = "回答の投稿に失敗しました"
      render template: "questions/show"
    end
  end

  private

  def solution_params
    params.require(:solution).permit(:answer)
  end
end
