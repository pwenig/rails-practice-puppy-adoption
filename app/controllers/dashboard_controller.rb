class DashboardController < ApplicationController

  def index
    @adopted = Adopted.all
    @playdates = Playdate.all
  end


end