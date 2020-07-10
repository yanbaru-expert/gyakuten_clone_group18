class MonetizesController < ApplicationController
  def index
    @monetizes = Monetize.all
  end
end
