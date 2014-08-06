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
      expect(page).to have_content "Add Me!"
    end

    scenario "user can click on add me link and see dashboard" do
      create_user
      create_puppy
      login
      click_on "Add Me!"
      expect(page).to have_content "My Puppy Dashboard"
    end
  end
end