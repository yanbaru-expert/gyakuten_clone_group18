class LiveCodingsController < ApplicationController
  def index
    @live_codings = LiveCoding.order("id DESC").page(params[:page]).per(10)
  end

end
