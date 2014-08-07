class DashboardController < ApplicationController

  def index
    @adoptions = Adoption.all
    @playdates = Playdate.all
  end
end