require 'rails_helper'


describe 'Playdate' do

  it "creates a playdate" do
   puppy =  Puppy.new(image: "some string")
    playdate = Playdate.new(puppy_id: puppy.id, date: "2014-09-01", attending: 2)
    expect(playdate.valid?).to eq true
  end

  it "does not create a playdate with a date in the past" do
    puppy =  Puppy.new(image: "some string")
    playdate = Playdate.new(puppy_id: puppy.id, date: "2014-01-01", attending: 2)
    expect(playdate.valid?).to eq false

  end
end