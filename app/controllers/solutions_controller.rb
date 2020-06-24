class SolutionsController < ApplicationController
  def create
    @solution = Solution.new(solution_params)
    @solution.question_id = current_question.id
    @solution.save
    redirect_to quwestions_path
  end
end
