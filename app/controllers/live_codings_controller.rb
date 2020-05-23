class LiveCodingsController < ApplicationController
  def index
    @live_codings = LiveCoding.all.page(params[:page]).per(10)
  end

end
