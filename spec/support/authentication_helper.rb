module AuthenticationHelpers
  def login_with_user(user)
    visit new_user_session_path
    within('#new_user') do
      fill_in "user_email", with: user.email
      fill_in "user_password", with: user.password
      click_button "Log in"
    end
  end
end

RSpec.configure do |config|
  config.include AuthenticationHelpers
end
