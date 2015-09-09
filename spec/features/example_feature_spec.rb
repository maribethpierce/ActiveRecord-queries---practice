require 'spec_helper'

feature "User views the index page" do
  scenario "user sees the correct title and list of recipes" do
    visit '/'

    expect(page).to have_content "Brussels Sprouts Recipes"
  end
end
