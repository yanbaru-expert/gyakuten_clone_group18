class TextsController < ApplicationController

  private

    def text_params
      params.require(:text).permit(:title, :image)
    end
end
