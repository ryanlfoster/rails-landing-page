require 'spec_helper'

describe "PasswordResets" do
  it "GET /users/password/new" do
    get new_user_password_path
    response.status.should be(200)
  end
  
  it "emails user when requesting password reset" do
    user = create(:user)
    visit new_user_session_path
    click_link "password"
    fill_in "Email", with: user.email
    click_button "Send me reset password instructions"
    page.should have_content("You will receive an email with instructions")
    last_email.to.should include(user.email)
  end
end
