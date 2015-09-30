require 'rails_helper'

RSpec.describe Woman, :type => :model do

  describe "#serach" do

    it("finds woman by name") do
      woman = FactoryGirl.create :woman, name: "whatever"
      expect(Woman.search("what")).to eq([woman])
    end

  end
end
