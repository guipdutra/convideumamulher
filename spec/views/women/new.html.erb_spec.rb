require 'rails_helper'

RSpec.describe "women/new", :type => :view do
  before(:each) do
    assign(:woman, Woman.new(
      :name => "MyString",
      :area => "MyString",
      :current_position => "MyString",
      :linkedin => "MyString"
    ))
  end

  it "renders new woman form" do
    render

    assert_select "form[action=?][method=?]", women_path, "post" do

      assert_select "input#woman_name[name=?]", "woman[name]"

      assert_select "input#woman_area[name=?]", "woman[area]"

      assert_select "input#woman_current_position[name=?]", "woman[current_position]"

      assert_select "input#woman_linkedin[name=?]", "woman[linkedin]"
    end
  end
end
