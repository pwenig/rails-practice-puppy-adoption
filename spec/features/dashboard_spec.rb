require 'rails_helper'

feature 'Dashboard' do

  scenario 'User can add a puppy to the dashboard' do
    visit root_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
    first(:button, 'Add Me!').click
    expect(page).to have_content "My Puppy Dashboard"
    expect(page).to have_css("img")
  end

  scenario 'User can make a play date with a puppy' do
    visit root_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
    first(:button, 'Add Me!').click
    first(:link, 'Make a Play Date').click
    fill_in "playdate_date", with: "10/01/2014"
    fill_in "playdate_number_of_attending", with: 2
    click_on "Schedule"

    expect(page).to have_content "October 1, 2014"
  end
end