require 'rails_helper'

feature "User's Dashboard page" do
  scenario "is loaded after user sign in" do
    user = FactoryGirl.create(:user)

    login_with_user(user)

    expect(page.title).to eq('hire_me | dashboard')
  end
end
