require 'spec_helper'

describe "Quizzers" do
  describe "GET /quizzers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get quizzers_path
      response.status.should be(200)
    end
  end
end
