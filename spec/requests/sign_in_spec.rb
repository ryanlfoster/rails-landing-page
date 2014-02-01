require 'spec_helper'

describe "SignInUser" do
  it "GET /sign_in" do
    get new_user_session_path
    response.status.should be(200)
  end
  
  it "Shows error if invalid data" do
    visit new_user_session_path
    fill_in "Email", with: "foo@bar.com"
    click_button "Sign in"
    page.should have_content("Invalid")
  end
  
  it "Success with valid data" do
    visit new_user_session_path
    create_and_login_user
    page.should have_content "Signed in"
  end
end