class AdoptedController < ApplicationController

  def index
    @adopted = Adopted.all
  end

  def create
    @puppy = Puppy.find(params[:format])
    @adopted = Adopted.new(puppy_id: @puppy.id)
    if @adopted.save
      redirect_to '/my_puppy_dashboard'
    else
      render root_path
    end
  end

end
