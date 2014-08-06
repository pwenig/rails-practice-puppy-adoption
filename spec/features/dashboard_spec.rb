require 'rails_helper'

feature 'Dashboard' do

  feature "User can click add me and the puppy will be added to my dashboard" do

    scenario "user can create login" do
      create_user
      visit '/'
      fill_in "user[email]", with: "user@example.com"
      fill_in "user[password]", with: "password"
      click_on "Login"
      expect(page).to have_content "gPup Adoption"
    end

    scenario "user sees add me link on index" do
      create_user
      create_puppy
      visit '/'
      fill_in "user[email]", with: "user@example.com"
      fill_in "user[password]", with: "password"
      click_on "Login"
      expect(page).to have_content "Add Me!"
    end

  end
end