require 'spec_helper'

describe "GetStaticPages" do
  it "GET /" do
    get root_path
    response.status.should be(200)
  end
end
