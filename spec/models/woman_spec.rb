require 'rails_helper'

RSpec.describe Woman, :type => :model do

  describe "#serach" do

    it("finds woman by name") do
      woman = FactoryGirl.create :woman, name: "whatever"
      expect(Woman.search("what")).to eq([woman])
    end

    it("finds woman by expertise area") do
      woman = FactoryGirl.create :woman, area: "education"
      expect(Woman.search("edu")).to eq([woman])
    end

  end
end
