require 'rails_helper'

RSpec.describe Woman, :type => :model do

  describe "#serach" do

    it("finds woman by expertise area") do
      woman = FactoryGirl.create :woman, area: "education"
      expect(Woman.search("edu")).to eq([woman])
    end

  end
end
