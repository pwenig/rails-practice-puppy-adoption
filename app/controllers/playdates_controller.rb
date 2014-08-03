class PlaydatesController < ApplicationController

  def new
    @puppy_image = params[:image]
    @playdate = Playdate.new(dashboard_id: params[:id])
  end

  def create
    @playdate = Playdate.new(date: params[:playdate][:date],
                             number_of_attending: params[:playdate][:number_of_attending], dashboard_id: params[:playdate][:dashboard_id])
    if @playdate.save
      redirect_to dashboard_index_path
    else
      render :new
    end
  end

  def index
    @playdates = Playdate.all
  end

end