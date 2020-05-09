class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: "DESC")
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to question_path, notice: "質問を投稿しました。"
    else
      flash.now[:alert] = "質問の投稿に失敗しました"
      render :index
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :detail)
  end

end