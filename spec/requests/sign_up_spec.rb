require 'spec_helper'

describe "SignUpUser" do
  it "GET /sign_up" do
    get new_user_registration_path
    response.status.should be(200)
  end
end