require 'spec_helper'

module RequestHelper
  def create_and_login_user
    user = create(:user)
    login(user)
    user
  end
  
  def login(user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end
end