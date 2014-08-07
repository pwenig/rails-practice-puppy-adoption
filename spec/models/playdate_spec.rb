require 'rails_helper'


describe 'Playdate' do

  it "creates a playdate" do
   puppy =  Puppy.new(image: "some string")
    playdate = Playdate.new(puppy_id: puppy.id, date: "2014-09-01", attending: 2)
    expect(playdate.valid?).to eq true
  end
end