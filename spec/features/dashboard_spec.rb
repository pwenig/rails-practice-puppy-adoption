require 'rails_helper'

feature 'Dashboard' do

  feature "User can click add me and the puppy will be added to my dashboard" do

    scenario "user can create login" do
      create_user
      login
      expect(page).to have_content "gPup Adoption"
    end

    scenario "user sees add me link on index" do
      create_user
      create_puppy
      login
      expect(page).to have_button "Add Me!"
    end

    scenario "user can click on add me link and see dashboard" do
      create_user
      create_puppy
      login
      click_on "Add Me!"
      expect(page).to have_content "My Puppy Dashboard"
    end

    scenario "user can click on add me link and see puppy added to dashboard" do
      create_user
      create_puppy
      login
      click_on "Add Me!"
      expect(page).to have_content "My Puppy Dashboard"
      expect(page).to have_xpath("//img[@src = 'http://imgur.com/r6OBF6k.jpg']")
    end
  end

  feature "User can can click playdate and schedule a playdate" do

    scenario "user can see Make a Play Date link" do
      create_user
      create_puppy
      login
      click_on "Add Me!"
      click_on "Make a Play Date"
      expect(page).to have_content "Schedule a Play Date"
    end

  end
end