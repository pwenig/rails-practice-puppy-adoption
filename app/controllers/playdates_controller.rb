class PlaydatesController < ApplicationController

  def new
    @puppy = Puppy.find(params[:puppy_id])
  end
end