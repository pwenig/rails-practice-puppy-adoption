class DashboardController < ApplicationController

  def index
    @puppies = Puppy.all
    @adopted = Adopted.all
  end


end