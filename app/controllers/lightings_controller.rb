class LightingsController < ApplicationController
  def index
    @lightings = Lighting.all
  end
end
