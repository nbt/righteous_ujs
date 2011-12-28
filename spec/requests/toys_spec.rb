require 'spec_helper'

describe "Toys" do
  describe "GET /toys" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get toys_path
      response.status.should be(200)
    end
  end
end
