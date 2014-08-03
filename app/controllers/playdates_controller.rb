class PlaydatesController < ApplicationController

  def new
    @puppy_image = params[:image]
    @playdate = Playdate.new(puppy_id: params[:puppy_id])
  end

  def create
    @playdate = Playdate.new(puppy_id: params[:playdate][:puppy_id], date: params[:playdate][:date], attending: params[:playdate][:attending])
    if @playdate.save
      redirect_to '/my_puppy_dashboard'
    else
      render :new
    end
  end


end