class TalksController < ApplicationController
  def index
    @talks = Talk.all.page(params[:page]).per(18)
  end
end
