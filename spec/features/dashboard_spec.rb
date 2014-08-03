require 'rails_helper'

feature 'Dashboard' do

  scenario 'User can add a puppy to their dashboard' do
    create_user
    create_puppy
    visit root_path
    login
    click_on "Add Me!"

    expect(page).to have_css("img")
  end

  scenario 'User can make a playdates and see it on dashboard' do
    create_user
    create_puppy
    visit root_path
    login
    click_on "Add Me!"
    click_on "Make a Play Date"

    fill_in "playdate[date]", with: "01/10/2014"
    fill_in "playdate[attending]", with: 2
    click_on "Schedule"

    expect(page).to have_content "October 1st, 2014"
  end

end