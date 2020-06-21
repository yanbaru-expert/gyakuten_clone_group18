class SolutionsController < ApplicationController
  def create
    @solution = Solution.new(solution_params)
  end
end
