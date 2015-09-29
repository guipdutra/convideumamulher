require 'rails_helper'

RSpec.describe "women/index", :type => :view do
  before(:each) do
    assign(:women, [
      Woman.create!(
        :name => "Name",
        :area => "Area",
        :current_position => "Current Position",
        :linkedin => "Linkedin"
      ),
      Woman.create!(
        :name => "Name",
        :area => "Area",
        :current_position => "Current Position",
        :linkedin => "Linkedin"
      )
    ])
  end

  it "renders a list of women" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "Current Position".to_s, :count => 2
    assert_select "tr>td", :text => "Linkedin".to_s, :count => 2
  end
end
