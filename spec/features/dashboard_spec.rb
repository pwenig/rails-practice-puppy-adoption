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


    scenario "user can see image of puppy that is having the playdate" do
      create_user
      create_puppy
      login
      click_on "Add Me!"
      click_on "Make a Play Date"
      expect(page).to have_content "Schedule a Play Date"
      expect(page).to have_xpath("//img[@src = 'http://imgur.com/r6OBF6k.jpg']")
    end

    scenario "user can see datefield to schedule a playdate" do
      create_user
      create_puppy
      login
      click_on "Add Me!"
      click_on "Make a Play Date"
      expect(page).to have_content "Schedule a Play Date"
      expect(page).to have_xpath("//img[@src = 'http://imgur.com/r6OBF6k.jpg']")
      expect(page).to have_field("playdate[date]")
    end

    scenario "user can see an attending field to schedule a playdate" do
      create_user
      create_puppy
      login
      click_on "Add Me!"
      click_on "Make a Play Date"
      expect(page).to have_content "Schedule a Play Date"
      expect(page).to have_xpath("//img[@src = 'http://imgur.com/r6OBF6k.jpg']")
      expect(page).to have_field("playdate[date]")
      expect(page).to have_field("playdate[attending]")
    end

    scenario "user can schedule a playdate and see the date on the dashboard" do
      create_user
      create_puppy
      login
      click_on "Add Me!"
      click_on "Make a Play Date"
      fill_in "playdate[date]", with: "2014-09-01"
      fill_in "playdate[attending]", with: 4
      click_on "Schedule"
      expect(page).to have_content "September 1"
    end
  end
end