require 'rails_helper'

RSpec.describe "Women", :type => :request do
  describe "GET /women" do
    it "works! (now write some real specs)" do
      get women_path
      expect(response).to have_http_status(200)
    end
  end
end
