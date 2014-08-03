class DashboardController < ApplicationController

  def index
    @puppies = Puppy.all
    @adopted = Adopted.all
    @playdates = Playdate.all
  end


end