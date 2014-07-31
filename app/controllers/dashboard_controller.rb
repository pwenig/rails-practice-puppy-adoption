class DashboardController < ApplicationController

  def index
    @dashboards = Dashboard.all.includes(:puppy)
  end

  def create
    @puppy = Puppy.find(params[:format])
    @dashboard = Dashboard.new(user_id: current_user.id, puppy_id: @puppy.id)
    if @dashboard.save
      redirect_to "/dashboard"
    else
      render root_path
    end
  end

end