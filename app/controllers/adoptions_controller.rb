class AdoptionsController < ApplicationController

  def create
    puppy = Puppy.find(params[:puppy_id])
    adopted = Adoption.new(puppy_id: puppy.id)
    if adopted.save
      redirect_to '/my_puppy_dashboard'
    else
      redirect_to 'root_path'
    end

  end
end