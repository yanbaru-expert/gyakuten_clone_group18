class TextsController < ApplicationController
  def index
    @texts = Text.all
  end

  private

    def text_params
      params.require(:text).permit(:title, :image)
    end
end
