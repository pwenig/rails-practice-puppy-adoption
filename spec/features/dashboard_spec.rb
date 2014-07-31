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
end