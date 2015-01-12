require 'rails_helper'

feature "Visiting the home page" do
  scenario "opening the root path" do
    visit root_path

    expect(page).to have_content("hire_me")
  end
end
