class AdoptedController < ApplicationController


  def create
    @puppy = Puppy.find(params[:puppy_id])
    @adopted = Adopted.new(puppy_id: @puppy.id)
    if @adopted.save
      redirect_to '/my_puppy_dashboard'
    else
      render root_path
    end
  end

end
