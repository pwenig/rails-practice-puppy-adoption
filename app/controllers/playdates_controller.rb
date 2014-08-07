class PlaydatesController < ApplicationController

  def new
    @puppy = Puppy.find(params[:puppy_id])
    @playdate = Playdate.new
  end

  def create
    @puppy = Puppy.find(params[:playdate][:puppy_id])
    @playdate = Playdate.new(puppy_id: @puppy.id, date: params[:playdate][:date],
                            attending: params[:playdate][:attending])
    if @playdate.save
      redirect_to '/my_puppy_dashboard'
    else
      render :new
    end
  end

end
