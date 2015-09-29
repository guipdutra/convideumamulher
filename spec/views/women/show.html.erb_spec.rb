require 'rails_helper'

RSpec.describe "women/show", :type => :view do
  before(:each) do
    @woman = assign(:woman, Woman.create!(
      :name => "Name",
      :area => "Area",
      :current_position => "Current Position",
      :linkedin => "Linkedin"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Area/)
    expect(rendered).to match(/Current Position/)
    expect(rendered).to match(/Linkedin/)
  end
end
