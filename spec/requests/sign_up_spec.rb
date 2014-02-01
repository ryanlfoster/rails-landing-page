require 'spec_helper'

describe "SignUpUser" do
  it "GET /sign_up" do
    get new_user_registration_path
    response.status.should be(200)
  end
  
  it "Shows error if invalid data" do
    visit new_user_registration_path
    fill_in "Email", with: "foo@bar.com"
    click_button "Sign up"
    page.should have_content("error")
  end
  
  it "shows error for password mismatch" do 
    visit new_user_registration_path
    fill_in "Email", with: "foo@bar.com"
    fill_in "Password", with: "secret1234"
    fill_in "Password confirmation", with: "secret123"
    click_button "Sign up"
    page.should have_content("error")
  end
  
  it "Success with valid data" do
    visit new_user_registration_path
    fill_in "Email", with: "foo@bar.com"
    fill_in "Password", with: "secret123"
    fill_in "Password confirmation", with: "secret123"
    click_button "Sign up" 
    page.should have_content "Welcome"
  end
end