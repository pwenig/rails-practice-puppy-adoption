class DashboardController < ApplicationController

  def index
    @adoptions = Adoption.all
  end
end