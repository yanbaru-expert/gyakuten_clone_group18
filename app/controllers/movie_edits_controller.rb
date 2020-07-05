class MovieEditsController < ApplicationController
  def index
    @movieedits = MovieEdit.all
  end
end
